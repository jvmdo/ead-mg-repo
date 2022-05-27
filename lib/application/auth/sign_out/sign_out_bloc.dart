import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ead_app/domain/auth/auth_failures.dart';
import 'package:ead_app/domain/auth/auth_interface.dart';

part 'sign_out_event.dart';
part 'sign_out_state.dart';
part 'sign_out_bloc.freezed.dart';

@injectable
class SignOutBloc extends Bloc<SignOutEvent, SignOutState> {
  final AuthInterface _iAuth;

  SignOutBloc(this._iAuth) : super(SignOutState.initial());

  @override
  Stream<SignOutState> mapEventToState(
    SignOutEvent event,
  ) async* {
    yield* event.map(
      signOutPressed: (e) async* {
        Either<AuthFailure, Unit>? failureOrSuccess;

        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await _iAuth.signUserOut();

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
