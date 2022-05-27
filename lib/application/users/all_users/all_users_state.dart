part of 'all_users_bloc.dart';

@freezed
class AllUsersState with _$AllUsersState {
  const factory AllUsersState.initial() = _Initial;
  const factory AllUsersState.loadInProgress() = _LoadInProgress;
  const factory AllUsersState.loadSuccess(List<User> users) = _LoadSuccess;
  const factory AllUsersState.loadFailure(UsersFailure usersFailure) =
      _LoadFailure;
}
