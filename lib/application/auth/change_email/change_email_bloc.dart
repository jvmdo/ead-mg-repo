import 'package:dartz/dartz.dart';
import 'package:ead_app/domain/auth/auth_failures.dart';
import 'package:ead_app/domain/auth/auth_interface.dart';
import 'package:ead_app/domain/auth/value_objects.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'change_email_bloc.freezed.dart';
part 'change_email_event.dart';
part 'change_email_state.dart';

@injectable
class ChangeEmailBloc extends Bloc<ChangeEmailEvent, ChangeEmailState> {
  final AuthInterface _iAuth;

  ChangeEmailBloc(this._iAuth) : super(ChangeEmailState.initial());

  @override
  Stream<ChangeEmailState> mapEventToState(
    ChangeEmailEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      sendChangeEmailPressed: (e) async* {
        Either<AuthFailure, Unit>? failureOrSuccess;
        final isEmailValid = state.emailAddress.isValid();

        if (isEmailValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _iAuth.changeEmail(
            newEmailAddress: state.emailAddress,
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
