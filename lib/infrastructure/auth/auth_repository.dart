import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:ead_app/domain/auth/auth_failures.dart';
import 'package:ead_app/domain/auth/auth_interface.dart';
import 'package:ead_app/domain/auth/value_objects.dart';
import 'package:ead_app/domain/users/user.dart';
import 'package:ead_app/domain/users/value_objects.dart';
import 'package:ead_app/infrastructure/users/user_dtos.dart';

@LazySingleton(as: AuthInterface)
class AuthRepository implements AuthInterface {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final FirebaseFunctions _functions;

  AuthRepository(
    this._auth,
    this._firestore,
    this._storage,
    this._functions,
  );

  @override
  Future<Either<AuthFailure, Unit>> signUpWithEmailAndPassword({
    required FullName name,
    required EmailAddress emailAddress,
    required Password password,
    required UserType type,
    required Code syscode,
    required Images images,
    Code? sucode,
  }) async {
    final codesCheck = _functions.httpsCallable('codeCheck');

    await Future.delayed(const Duration(seconds: 2));

    try {
      final Map<String, String?> codes = {
        "syscode": syscode.getOrCrash(),
        "sucode": sucode?.getOrCrash(),
      };

      final callResult = await codesCheck(codes);
      final bool isCodeValid = callResult.data as bool;

      if (isCodeValid) {
        final emailAddressStr = emailAddress.getOrCrash();
        final passwordStr = password.getOrCrash();

        final createdUser = await _auth.createUserWithEmailAndPassword(
          email: emailAddressStr,
          password: passwordStr,
        );

        final userId = createdUser.user!.uid;
        final usersCollection = _firestore.collection('users');
        final List<TaskSnapshot> snapshot = [];
        final metadata = SettableMetadata(customMetadata: {'userId': userId});
        final imagesList = images.getOrCrash();
        final List<String> imagesPath = [];

        for (int i = 0; i < imagesList.length; i++) {
          final imageName = imagesList[i].path.split('/').last;
          imagesPath.add('users-pictures/$userId/$imageName');
          final imageBlob = await imagesList[i].readAsBytes();
          final task = _storage.ref(imagesPath[i]).putData(imageBlob, metadata);
          snapshot.add(await task);
        }

        if (snapshot.every((shot) => shot.totalBytes != 0)) {
          final newUser = UserDto.fromJson({
            'name': name.getOrCrash(),
            'email': emailAddress.getOrCrash(),
            'type': type.getOrCrash(),
            'syscode': syscode.getOrCrash(),
            'sucode': sucode?.getOrCrash(),
            'profilePicture': imagesPath[0],
            'images': imagesPath,
            'addedBy': "",
            'createdAt': DateTime.now().millisecondsSinceEpoch,
            'isRegistered': false,
            'isBlocked': false,
          });

          usersCollection.doc(userId).set(newUser.toDocument());
        } else {
          await createdUser.user?.delete();
          return left(const AuthFailure.uploadError());
        }
        return right(unit);
      } else {
        return left(const AuthFailure.wrongCodes());
      }
    } on FirebaseFunctionsException catch (_) {
      return left(const AuthFailure.functionExecutionError());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError()); // Generic error
      }
    } on FirebaseException catch (_) {
      return left(const AuthFailure.uploadError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    await Future.delayed(const Duration(seconds: 1));

    try {
      await _auth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else if (e.code == 'user-not-found') {
        return left(const AuthFailure.userNotFound());
      } else {
        return left(const AuthFailure.serverError());
      }
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<User>> getSignedInUser() async {
    final userId = _auth.currentUser?.uid;
    if (userId != null) {
      final snapshot = await _firestore.collection('users').doc(userId).get();
      final user = UserDto.fromDocument(snapshot).toDomain();
      return some(user);
    } else {
      return none();
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signUserOut() async {
    try {
      await _auth.signOut();
      return right(unit);
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> recoverPassword({
    required EmailAddress emailAddress,
  }) async {
    try {
      await _auth.sendPasswordResetEmail(
        email: emailAddress.getOrCrash(),
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email' || e.code == 'user-not-found') {
        return left(const AuthFailure.userNotFound());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> changeEmail({
    required EmailAddress newEmailAddress,
  }) async {
    final currentUser = _auth.currentUser;
    try {
      if (currentUser != null) {
        await currentUser.updateEmail(newEmailAddress.getOrCrash());
        return right(unit);
      } else {
        throw const AuthFailure.userNotFound();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else if (e.code == 'requires-recent-login') {
        return left(const AuthFailure.requiresRecentLogin());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> changePassword({
    required Password newPassword,
  }) async {
    final currentUser = _auth.currentUser;
    try {
      if (currentUser != null) {
        await currentUser.updatePassword(newPassword.getOrCrash());
        return right(unit);
      } else {
        return left(const AuthFailure.userNotFound());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'requires-recent-login') {
        return left(const AuthFailure.requiresRecentLogin());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }
}
