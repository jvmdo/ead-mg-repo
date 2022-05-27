import 'package:dartz/dartz.dart';
import 'package:ead_app/domain/door/door.dart';
import 'package:ead_app/domain/door/door_failures.dart';

abstract class DoorInterface {
  Stream<Either<DoorFailure, Door>> watchState();
  Future<Either<DoorFailure, Unit>> open();
  Future<Either<DoorFailure, Unit>> close();
  Future<Either<DoorFailure, Unit>> alarm();
}
