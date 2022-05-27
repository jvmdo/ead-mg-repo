import 'package:dartz/dartz.dart';
import 'package:ead_app/domain/auth/auth_failures.dart';
import 'package:ead_app/domain/auth/value_objects.dart';
import 'package:ead_app/domain/users/user.dart';
import 'package:ead_app/domain/users/value_objects.dart';

abstract class AuthInterface {
  Future<Either<AuthFailure, Unit>> signUpWithEmailAndPassword({
    required FullName name,
    required EmailAddress emailAddress,
    required Password password,
    required UserType type,
    required Code syscode,
    required Images images,
    Code? sucode,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Option<User>> getSignedInUser();

  Future<Either<AuthFailure, Unit>> signUserOut();

  Future<Either<AuthFailure, Unit>> recoverPassword({
    required EmailAddress emailAddress,
  });

  Future<Either<AuthFailure, Unit>> changeEmail({
    required EmailAddress newEmailAddress,
  });

  Future<Either<AuthFailure, Unit>> changePassword({
    required Password newPassword,
  });
}
