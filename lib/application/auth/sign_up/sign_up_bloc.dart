import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:ead_app/domain/auth/auth_failures.dart';
import 'package:ead_app/domain/auth/auth_interface.dart';
import 'package:ead_app/domain/auth/value_objects.dart';
import 'package:ead_app/domain/core/a_value_objects.dart';
import 'package:ead_app/domain/users/value_objects.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AuthInterface _iAuth;

  SignUpBloc(this._iAuth) : super(SignUpState.initial());

  @override
  Stream<SignUpState> mapEventToState(SignUpEvent event) async* {
    yield* event.map(
      nameChanged: (e) async* {
        yield state.maybeMap(
          editingForm: (s) => s.copyWith(
            name: FullName(e.nameStr),
            displayFailure: false,
          ),
          orElse: () => state,
        );
      },
      emailChanged: (e) async* {
        yield state.maybeMap(
          editingForm: (s) => s.copyWith(
            emailAddress: EmailAddress(e.emailStr),
            displayFailure: false,
          ),
          orElse: () => state,
        );
      },
      passwordChanged: (e) async* {
        yield state.maybeMap(
          editingForm: (s) => s.copyWith(
            password: Password(e.passwordStr),
            displayFailure: false,
          ),
          orElse: () => state,
        );
      },
      typeChanged: (e) async* {
        yield state.maybeMap(
          editingForm: (s) => s.copyWith(
            type: UserType(e.typeStr),
            displayFailure: false,
          ),
          orElse: () => state,
        );
      },
      syscodeChanged: (e) async* {
        yield state.maybeMap(
          editingForm: (s) => s.copyWith(
            syscode: Code(e.syscodeStr),
            displayFailure: false,
          ),
          orElse: () => state,
        );
      },
      sucodeChanged: (e) async* {
        yield state.maybeMap(
          editingForm: (s) => s.copyWith(
            sucode: Code(e.sucodeStr),
            displayFailure: false,
          ),
          orElse: () => state,
        );
      },
      imagePickedChanged: (e) async* {
        yield state.maybeMap(
          editingForm: (s) => s.copyWith(
            images: Images(e.imageList),
            displayFailure: false,
          ),
          orElse: () => state,
        );
      },
      signUpWithEmailAndPasswordPressed: (e) async* {
        final SignUpState formState = state.maybeMap(
          editingForm: (s) => s,
          orElse: () => SignUpState.initial(),
        );

        final List<ValueObject> fields = formState.maybeMap(
          editingForm: (fs) => [
            fs.name,
            fs.emailAddress,
            fs.password,
            fs.type,
            fs.syscode,
            if (fs.sucode == Code('initial')) Code('xxxx-xxxx') else fs.sucode,
            fs.images,
          ],
          orElse: () => [],
        );

        final validator = fields.map((f) => f.isValid()).toList();

        if (validator.every((v) => v == true) && validator.isNotEmpty) {
          yield const SignUpState.creatingInProgress();

          final failureOrCreate = await _iAuth.signUpWithEmailAndPassword(
            name: fields[0] as FullName,
            emailAddress: fields[1] as EmailAddress,
            password: fields[2] as Password,
            type: fields[3] as UserType,
            syscode: fields[4] as Code,
            sucode: fields[5] == Code('xxxx-xxxx') ? null : fields[5] as Code,
            images: fields[6] as Images,
          );

          yield failureOrCreate.fold(
            (f) => SignUpState.editingForm(
              name: fields[0] as FullName,
              emailAddress: fields[1] as EmailAddress,
              password: fields[2] as Password,
              type: fields[3] as UserType,
              syscode: fields[4] as Code,
              sucode: fields[5] as Code,
              images: fields[6] as Images,
              displayFailure: true,
              failure: f,
            ),
            (_) => const SignUpState.creatingSuccess(),
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
