import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ead_app/domain/auth/auth_failures.dart';
import 'package:ead_app/domain/auth/auth_interface.dart';
import 'package:ead_app/domain/auth/value_objects.dart';
import 'package:ead_app/domain/core/a_value_objects.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthInterface _iAuth;

  SignInBloc(this._iAuth) : super(SignInState.initial());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.maybeMap(
          editingForm: (s) => s.copyWith(email: EmailAddress(e.emailStr)),
          orElse: () => state,
        );
      },
      passwordChanged: (e) async* {
        yield state.maybeMap(
          editingForm: (s) => s.copyWith(password: Password(e.passwordStr)),
          orElse: () => state,
        );
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        final SignInState formState = state.maybeMap(
          editingForm: (s) => s,
          orElse: () => SignInState.initial(),
        );

        final List<ValueObject> fields = formState.maybeMap(
          editingForm: (fs) => [fs.email, fs.password],
          orElse: () => [],
        );

        final validator = fields.map((f) => f.isValid()).toList();

        if (validator.every((v) => v == true) && validator.isNotEmpty) {
          yield SignInState.loginInProgress(formState);

          final failureOrLogin = await _iAuth.signInWithEmailAndPassword(
            emailAddress: fields[0] as EmailAddress,
            password: fields[1] as Password,
          );

          yield failureOrLogin.fold(
            (f) => SignInState.loginFailure(formState, f),
            (r) => const SignInState.loginSuccess(),
          );
        } else {
          yield state.maybeMap(
            orElse: () => formState,
          );
        }
      },
    );
  }
}
