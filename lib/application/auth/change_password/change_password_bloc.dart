import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ead_app/domain/auth/auth_failures.dart';
import 'package:ead_app/domain/auth/auth_interface.dart';
import 'package:ead_app/domain/auth/value_objects.dart';

part 'change_password_bloc.freezed.dart';
part 'change_password_event.dart';
part 'change_password_state.dart';

@injectable
class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final AuthInterface _iAuth;

  ChangePasswordBloc(this._iAuth) : super(ChangePasswordState.initial());

  @override
  Stream<ChangePasswordState> mapEventToState(
    ChangePasswordEvent event,
  ) async* {
    yield* event.map(
      passwordChanged: (e) async* {
        yield state.copyWith(
          newPassword: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      changePasswordPressed: (e) async* {
        Either<AuthFailure, Unit>? failureOrSuccess;
        final isPasswordValid = state.newPassword.isValid();

        if (isPasswordValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _iAuth.changePassword(
            newPassword: state.newPassword,
          );
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          // optionOf is equivalent to:
          // failureOrSuccess == null ? none() : some(failureOrSuccess)
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
