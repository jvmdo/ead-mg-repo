import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:ead_app/domain/core/a_value_objects.dart';
import 'package:ead_app/domain/users/users_failures.dart';
import 'package:ead_app/domain/users/users_interface.dart';
import 'package:ead_app/domain/users/value_objects.dart';

part 'add_user_bloc.freezed.dart';
part 'add_user_event.dart';
part 'add_user_state.dart';

@injectable
class AddUserBloc extends Bloc<AddUserEvent, AddUserState> {
  final UsersInterface _iUser;

  AddUserBloc(this._iUser) : super(AddUserState.initial());

  @override
  Stream<AddUserState> mapEventToState(AddUserEvent event) async* {
    yield* event.map(
      nameChanged: (e) async* {
        yield state.maybeMap(
          editingForm: (s) => s.copyWith(name: FullName(e.nameStr)),
          orElse: () => state,
        );
      },
      typeChanged: (e) async* {
        yield state.maybeMap(
          editingForm: (s) {
            final type = UserType(e.typeStr);
            final isValid = type.isValid();

            return s.copyWith(
              type: UserType(e.typeStr),
              displayErrorMessages: [!isValid, false],
            );
          },
          orElse: () => state,
        );
      },
      numberOfImagesChanged: (e) async* {
        yield state.maybeMap(
          editingForm: (s) {
            final images = Images(e.images);
            final isValid = images.isValid();

            return s.copyWith(
              images: images,
              displayErrorMessages: [false, !isValid],
            );
          },
          orElse: () => state,
        );
      },
      addUserPressed: (_) async* {
        final List<ValueObject> fields = state.maybeMap(
          editingForm: (ss) => [ss.name, ss.type, ss.images],
          orElse: () => [],
        );

        final validator = fields.map((f) => f.isValid()).toList();

        if (validator.every((v) => v == true) && validator.isNotEmpty) {
          yield const AddUserState.uploadingInProgress();

          final failureOrAdded = await _iUser.addUser(
            name: fields[0] as FullName,
            type: fields[1] as UserType,
            images: fields[2] as Images,
          );

          yield failureOrAdded.fold(
            (f) => AddUserState.addedFailure(f),
            (r) => const AddUserState.addedSuccess(),
          );
        } else {
          yield state.maybeMap(
            editingForm: (s) => s.copyWith(
              displayErrorMessages: [!validator[1], !validator[2]],
            ),
            orElse: () => AddUserState.initial(),
          );
        }
      },
    );
  }
}
