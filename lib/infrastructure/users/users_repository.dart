import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ead_app/infrastructure/core/firebase_x.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:ead_app/domain/users/user.dart';
import 'package:ead_app/domain/users/users_failures.dart';
import 'package:ead_app/domain/users/users_interface.dart';
import 'package:ead_app/domain/users/value_objects.dart';
import 'package:ead_app/infrastructure/users/user_dtos.dart';

@LazySingleton(as: UsersInterface)
class UsersRepository implements UsersInterface {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final FirebaseAuth _auth;

  UsersRepository(this._firestore, this._storage, this._auth);

  @override
  Future<Either<UsersFailure, List<User>>> getAllUsers() async {
    try {
      final querySnapshot = await _firestore.usersList();

      final allUsers = querySnapshot.docs.map((doc) {
        return UserDto.fromDocument(doc).toDomain();
      }).toList();

      return right(allUsers);
    } on FirebaseException catch (e) {
      log(e.toString());
      return left(const UsersFailure.queryError());
    } catch (e) {
      log(e.toString());
      return left(const UsersFailure.serverError());
    }
  }

  @override
  Future<Either<UsersFailure, Unit>> addUser({
    required FullName name,
    required UserType type,
    required Images images,
  }) async {
    try {
      final String? currentUserId = _auth.currentUser?.uid;
      final String? currentUserName;
      final String? currentUserSysCode;

      if (currentUserId != null) {
        final snapshot =
            await _firestore.collection('users').doc(currentUserId).get();
        final doc = snapshot.data()!;
        currentUserName = doc['name'] as String;
        currentUserSysCode = doc['syscode'] as String;
      } else {
        return left(const UsersFailure.currentUserUnavailable());
      }

      final newUser = User.dummy().copyWith(
        name: name,
        type: type,
        syscode: UniqueId.fromUniqueString(currentUserSysCode),
        addedBy: ByName(currentUserName),
      );

      final userId = newUser.id.getOrCrash();
      final users = _firestore.collection('users');
      final List<TaskSnapshot> snapshot = [];
      final metadata = SettableMetadata(customMetadata: {'userId': userId});
      final imagesList = images.getOrCrash();
      final List<String> imagesPath = [];

      for (int i = 0; i < imagesList.length; i++) {
        final imageName = imagesList[i].path.split('/').last;
        imagesPath.add('users-pictures/$userId/$imageName');
        final imageAsBytes = await imagesList[i].readAsBytes();
        final task =
            _storage.ref(imagesPath[i]).putData(imageAsBytes, metadata);
        snapshot.add(await task);
      }

      if (snapshot.every((shot) => shot.totalBytes != 0)) {
        log("snapshot total bytes: ${snapshot.map((s) => s.totalBytes).reduce((a, b) => a + b)}");
        users.doc(userId).set(
              UserDto.fromDomain(newUser)
                  .copyWith(sucode: null, profilePicture: imagesPath[0])
                  .toDocument(),
            );
      } else {
        log("snapshot no bytes: ${snapshot.map((s) => s.totalBytes).reduce((a, b) => a + b)}");
        return left(const UsersFailure.uploadError());
      }

      await Future.delayed(const Duration(seconds: 5));
      return right(unit);
    } catch (e) {
      log("REPO: add user error\n${e.toString()}");
      return left(const UsersFailure.serverError());
    }
  }
}
