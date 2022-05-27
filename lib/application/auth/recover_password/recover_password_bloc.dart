import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ead_app/domain/auth/auth_failures.dart';
import 'package:ead_app/domain/auth/auth_interface.dart';
import 'package:ead_app/domain/auth/value_objects.dart';

part 'recover_password_bloc.freezed.dart';
part 'recover_password_event.dart';
part 'recover_password_state.dart';

@injectable
class RecoverPasswordBloc
    extends Bloc<RecoverPasswordEvent, RecoverPasswordState> {
  final AuthInterface _iAuth;

  RecoverPasswordBloc(this._iAuth) : super(RecoverPasswordState.initial());

  @override
  Stream<RecoverPasswordState> mapEventToState(
    RecoverPasswordEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      sendRecoverPasswordEmailPressed: (e) async* {
        Either<AuthFailure, Unit>? failureOrSuccess;
        final isEmailValid = state.emailAddress.isValid();

        if (isEmailValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _iAuth.recoverPassword(
            emailAddress: state.emailAddress,
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
