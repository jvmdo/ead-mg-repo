part of 'watch_door_bloc.dart';

@freezed
class WatchDoorState with _$WatchDoorState {
  const factory WatchDoorState.initial() = Initial;
  const factory WatchDoorState.loadInProgress() = LoadInProgress;
  const factory WatchDoorState.loadSuccess(Door door) = LoadSuccess;
  const factory WatchDoorState.loadFailure(DoorFailure failure) = LoadFailure;
}
