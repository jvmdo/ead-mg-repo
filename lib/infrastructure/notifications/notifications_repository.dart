import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';
import 'package:ead_app/domain/notifications/notification_failures.dart';
import 'package:ead_app/domain/notifications/notifications.dart';
import 'package:ead_app/domain/notifications/notifications_interface.dart';
import 'package:ead_app/domain/users/value_objects.dart';
import 'package:ead_app/infrastructure/core/firebase_x.dart';
import 'package:ead_app/infrastructure/notifications/notification_dtos.dart';
import 'package:ead_app/infrastructure/users/user_dtos.dart';

@LazySingleton(as: NotificationsInterface)
class NotificationRepository implements NotificationsInterface {
  final FirebaseFirestore _firestore;

  NotificationRepository(this._firestore);

  @override
  Future<Either<NotificationFailures, List<Notification>>>
      getAllNotifications() async {
    try {
      final userSyscode = await _firestore.userSyscode();
      final querySnapshot = await _firestore
          .collection('notifications')
          .where('syscode', isEqualTo: userSyscode)
          .orderBy('datetime', descending: true)
          .get();

      final allNotifications = querySnapshot.docs.map((doc) {
        return NotificationDto.fromDocument(doc).toDomain();
      }).toList();

      return right(allNotifications);
    } on FirebaseException catch (e) {
      log(e.toString());
      return left(const NotificationFailures.queryError());
    } catch (e) {
      log(e.toString());
      return left(const NotificationFailures.serverError());
    }
  }

  @override
  Future<Either<NotificationFailures, List<Notification>>> getUserNotifications(
    FullName userName,
  ) async {
    try {
      final systemNotifications = await _firestore.notificationsList();
      final querySnapshot = await systemNotifications
          .where('name', isEqualTo: userName.getOrCrash())
          .get();

      final userNotifications = querySnapshot.docs.map((doc) {
        return NotificationDto.fromDocument(doc).toDomain();
      }).toList();

      return right(userNotifications);
    } on FirebaseException catch (e) {
      log(e.toString());
      return left(const NotificationFailures.queryError());
    } catch (e) {
      log(e.toString());
      return left(const NotificationFailures.serverError());
    }
  }

  @override
  Future<Either<NotificationFailures, Notification>> answerAs(
    String answer,
    UniqueId notificationId,
  ) async {
    try {
      final userDocument = await _firestore.userDocument();
      final currentUser = UserDto.fromDocument(userDocument).toDomain();
      // TODO: fix this logic
      if (currentUser != null) {
        final notificationRef = _firestore
            .collection('notifications')
            .doc(notificationId.getOrCrash());

        await notificationRef.update({
          'answer': answer,
          'answeredBy': currentUser.name.getOrCrash(),
        });

        final userDoor = await _firestore.userAction();
        await userDoor.update({
          'action': answer,
          'updateTime': DateTime.now().millisecondsSinceEpoch,
        });

        final notificationUpdated = await _firestore
            .collection('notifications')
            .doc(notificationId.getOrCrash())
            .get();

        final notification =
            NotificationDto.fromDocument(notificationUpdated).toDomain();

        return right(notification);
      } else {
        return left(const NotificationFailures.currentUserUnavailable());
      }
    } on FirebaseException {
      return left(const NotificationFailures.queryError());
    } catch (e) {
      log(e.toString());
      return left(const NotificationFailures.serverError());
    }
  }

  @override
  Stream<Either<NotificationFailures, List<Notification>>>
      queryNotificationsByName(
    String? queryName,
  ) async* {
    final systemNotifications = await _firestore.notificationsList();

    yield* systemNotifications
        .where('indexedName', arrayContains: queryName?.toLowerCase())
        .snapshots()
        .map(
          (snapshot) => right<NotificationFailures, List<Notification>>(
            snapshot.docs
                .map((doc) => NotificationDto.fromDocument(doc).toDomain())
                .toList(),
          ),
        )
        .handleError(
      (e) {
        if (e is FirebaseException) {
          return left(const NotificationFailures.queryError());
        } else {
          log(e.toString());
          return left(const NotificationFailures.serverError());
        }
      },
    );
  }

  @override
  Future<Either<NotificationFailures, List<Notification>>>
      getNotificationsByAnswer(
    String queryAnswer,
  ) async {
    try {
      final systemNotifications = await _firestore.notificationsList();
      final querySnapshot = await systemNotifications
          .where('answer', isEqualTo: queryAnswer.toLowerCase())
          .get();

      final filteredNotifications = querySnapshot.docs.map((doc) {
        return NotificationDto.fromDocument(doc).toDomain();
      }).toList();

      return right(filteredNotifications);
    } on FirebaseException catch (e) {
      log(e.toString());
      return left(const NotificationFailures.queryError());
    } catch (e) {
      log(e.toString());
      return left(const NotificationFailures.serverError());
    }
  }

  @override
  Future<void> subscribeToTopic() async {
    log("subscribed!");
    final _firebaseMessaging = FirebaseMessaging.instance;
    final userSyscode = await _firestore.userSyscode();

    await _firebaseMessaging.subscribeToTopic(userSyscode);
  }
}
