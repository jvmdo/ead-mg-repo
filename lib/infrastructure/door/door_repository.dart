import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:ead_app/domain/door/door.dart';
import 'package:ead_app/domain/door/door_failures.dart';
import 'package:ead_app/domain/door/door_interface.dart';
import 'package:ead_app/infrastructure/core/firebase_x.dart';
import 'package:ead_app/infrastructure/door/door_dtos.dart';

@LazySingleton(as: DoorInterface)
class DoorRepository implements DoorInterface {
  final FirebaseFirestore _firestore;

  DoorRepository(this._firestore);

  @override
  Future<Either<DoorFailure, Unit>> alarm() async {
    final userDoor = await _firestore.userAction();
    try {
      await userDoor.update({
        'action': 'alarm',
        'updateTime': DateTime.now().millisecondsSinceEpoch,
      });
      return right(unit);
    } catch (e) {
      return left(const DoorFailure.updateFieldError());
    }
  }

  @override
  Future<Either<DoorFailure, Unit>> close() async {
    final userDoor = await _firestore.userAction();
    try {
      await userDoor.update({
        'action': 'close',
        'updateTime': DateTime.now().millisecondsSinceEpoch,
      });
      return right(unit);
    } catch (e) {
      return left(const DoorFailure.updateFieldError());
    }
  }

  @override
  Future<Either<DoorFailure, Unit>> open() async {
    final userDoor = await _firestore.userAction();
    try {
      await userDoor.update({
        'action': 'open',
        'updateTime': DateTime.now().millisecondsSinceEpoch,
      });
      return right(unit);
    } catch (e) {
      return left(const DoorFailure.updateFieldError());
    }
  }

  @override
  Stream<Either<DoorFailure, Door>> watchState() async* {
    final userDoor = await _firestore.userDoor();
    yield* userDoor
        .snapshots()
        .map(
          (snapshot) => right<DoorFailure, Door>(
            DoorDto.fromDocument(snapshot).toDomain(),
          ),
        )
        .handleError(
      (e) {
        if (e is FirebaseAuthException) {
          return left(const DoorFailure.currentUserUnavailable());
        }
        if (e is FirebaseException) {
          return left(const DoorFailure.queryError());
        } else {
          return left(const DoorFailure.serverError());
        }
      },
    );
  }
}
