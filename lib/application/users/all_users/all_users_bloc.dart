import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ead_app/domain/users/user.dart';
import 'package:ead_app/domain/users/users_failures.dart';
import 'package:ead_app/domain/users/users_interface.dart';

part 'all_users_event.dart';
part 'all_users_state.dart';
part 'all_users_bloc.freezed.dart';

@injectable
class AllUsersBloc extends Bloc<AllUsersEvent, AllUsersState> {
  final UsersInterface _iUsers;

  AllUsersBloc(this._iUsers) : super(const AllUsersState.initial());

  @override
  Stream<AllUsersState> mapEventToState(
    AllUsersEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield const AllUsersState.loadInProgress();
        final allUsers = await _iUsers.getAllUsers();
        add(AllUsersEvent.usersReceived(allUsers));
      },
      usersReceived: (e) async* {
        yield e.failureOrUsers.fold(
          (f) => AllUsersState.loadFailure(f),
          (users) => AllUsersState.loadSuccess(users),
        );
      },
    );
  }
}
