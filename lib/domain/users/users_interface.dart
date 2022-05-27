import 'package:dartz/dartz.dart';
import 'package:ead_app/domain/users/user.dart';
import 'package:ead_app/domain/users/users_failures.dart';
import 'package:ead_app/domain/users/value_objects.dart';

abstract class UsersInterface {
  Future<Either<UsersFailure, List<User>>> getAllUsers();

  Future<Either<UsersFailure, Unit>> addUser({
    required FullName name,
    required UserType type,
    required Images images,
  });
}
