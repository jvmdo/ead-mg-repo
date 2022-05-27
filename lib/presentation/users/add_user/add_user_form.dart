import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ead_app/application/users/add_user/add_user_bloc.dart';
import 'package:ead_app/presentation/users/add_user/image_widgets/add_girl_svg.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';
import 'package:ead_app/presentation/widgets/background_widget.dart';
import 'package:ead_app/presentation/widgets/button_widget.dart';
import 'package:ead_app/presentation/widgets/double_radio_button_widget.dart';
import 'package:ead_app/presentation/widgets/icons/arrow_icon_widget.dart';
import 'package:ead_app/presentation/widgets/image_picker_widget.dart';
import 'package:ead_app/presentation/widgets/input_field_widget.dart';

class AddUserForm extends StatelessWidget {
  const AddUserForm({
    Key? key,
    required this.context,
    required this.state,
  }) : super(key: key);

  final BuildContext context;
  final EditingForm state;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const AddGirlSVG(),
            BackgroundWidget(
              height: 548,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Add user",
                      style: context.headline1,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    InputFieldWidget(
                      context,
                      name: 'name',
                      onChanged: (value) {
                        return context
                            .read<AddUserBloc>()
                            .add(AddUserEvent.nameChanged(value));
                      },
                      validator: (_) {
                        return state.name.value.fold(
                          (f) => f.maybeMap(
                            invalidName: (_) => 'Invalid name',
                            orElse: () => null,
                          ),
                          (_) => null,
                        );
                      },
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    DoubleRadioButtonWidget(
                      displayError: state.displayErrorMessages[0],
                      withGuest: true,
                      onTypeChosen: (value) {
                        context
                            .read<AddUserBloc>()
                            .add(AddUserEvent.typeChanged(value));
                      },
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    ImagePickerWidget(
                      displayError: state.displayErrorMessages[1],
                      description: "Choose 10 images\nof the person's face",
                      onImagePicked: (il) {
                        context
                            .read<AddUserBloc>()
                            .add(AddUserEvent.numberOfImagesChanged(il));
                      },
                    ),
                    const SizedBox(
                      height: 120,
                    ),
                    ButtonWidget(
                      name: "Add user",
                      icon: const ArrowIconWidget(),
                      onPressed: () {
                        context
                            .read<AddUserBloc>()
                            .add(const AddUserEvent.addUserPressed());
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
