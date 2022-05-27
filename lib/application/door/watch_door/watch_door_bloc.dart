import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ead_app/domain/door/door.dart';
import 'package:ead_app/domain/door/door_failures.dart';
import 'package:ead_app/domain/door/door_interface.dart';

part 'watch_door_event.dart';
part 'watch_door_state.dart';
part 'watch_door_bloc.freezed.dart';

@injectable
class WatchDoorBloc extends Bloc<WatchDoorEvent, WatchDoorState> {
  final DoorInterface _iDoor;

  WatchDoorBloc(this._iDoor) : super(const WatchDoorState.initial());

  StreamSubscription<Either<DoorFailure, Door>>? _doorStreamSubscription;

  @override
  Stream<WatchDoorState> mapEventToState(WatchDoorEvent event) async* {
    yield* event.map(
      watchStarted: (e) async* {
        yield const WatchDoorState.loadInProgress();
        _doorStreamSubscription?.cancel();
        _doorStreamSubscription = _iDoor.watchState().listen((failureOrDoor) {
          add(WatchDoorEvent.watchState(failureOrDoor));
        });
      },
      openPressed: (e) async* {
        final failureOrOpened = await _iDoor.open();
        yield failureOrOpened.fold(
          (f) => WatchDoorState.loadFailure(f),
          (door) {
            add(const WatchStarted());
            return state;
          },
        );
      },
      closePressed: (e) async* {
        final failureOrOpened = await _iDoor.close();
        yield failureOrOpened.fold(
          (f) => WatchDoorState.loadFailure(f),
          (door) {
            add(const WatchStarted());
            return state;
          },
        );
      },
      alarmPressed: (e) async* {
        final failureOrOpened = await _iDoor.alarm();
        yield failureOrOpened.fold(
          (f) => WatchDoorState.loadFailure(f),
          (door) {
            add(const WatchStarted());
            return state;
          },
        );
      },
      watchState: (e) async* {
        yield e.failureOrDoor.fold(
          (f) => WatchDoorState.loadFailure(f),
          (door) => WatchDoorState.loadSuccess(door),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _doorStreamSubscription?.cancel();
    return super.close();
  }
}
