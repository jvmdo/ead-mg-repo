part of 'watch_door_bloc.dart';

@freezed
class WatchDoorEvent with _$WatchDoorEvent {
  const factory WatchDoorEvent.watchStarted() = WatchStarted;
  const factory WatchDoorEvent.openPressed() = OpenPressed;
  const factory WatchDoorEvent.closePressed() = ClosePressed;
  const factory WatchDoorEvent.alarmPressed() = AlarmPressed;
  const factory WatchDoorEvent.watchState(
    Either<DoorFailure, Door> failureOrDoor,
  ) = WatchState;
}
