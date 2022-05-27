import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ead_app/application/auth/sign_up/sign_up_bloc.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';
import 'package:ead_app/presentation/auth/sign_up/image_widgets/home_plus_svg.dart';
import 'package:ead_app/presentation/widgets/background_widget.dart';
import 'package:ead_app/presentation/widgets/button_widget.dart';
import 'package:ead_app/presentation/widgets/double_radio_button_widget.dart';
import 'package:ead_app/presentation/widgets/icons/arrow_icon_widget.dart';
import 'package:ead_app/presentation/widgets/image_picker_widget.dart';
import 'package:ead_app/presentation/widgets/input_field_widget.dart';

class SignUpForm extends HookWidget {
  const SignUpForm({
    required this.context,
    Key? key,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    final displaySUField = useState(false);
    final displayTypeError = useState(false);
    final displayNImagesError = useState(false);

    return Form(
      autovalidateMode: AutovalidateMode.always,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 34,
            ),
            const HomePlusSVG(),
            BackgroundWidget(
              height: 652,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create Account",
                      style: context.headline1,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InputFieldWidget(
                      context,
                      name: 'name',
                      onChanged: (value) {
                        context
                            .read<SignUpBloc>()
                            .add(SignUpEvent.nameChanged(value));
                      },
                      validator: (_) {
                        return context.read<SignUpBloc>().state.maybeMap(
                              editingForm: (s) => s.name.value.fold(
                                (f) => f.maybeMap(
                                  invalidName: (_) => 'Invalid name format',
                                  orElse: () => null,
                                ),
                                (r) => null,
                              ),
                              orElse: () => null,
                            );
                      },
                      initialValue: context.read<SignUpBloc>().state.maybeMap(
                            editingForm: (s) => s.name.value.fold(
                              (_) => '',
                              (value) => value,
                            ),
                            orElse: () => null,
                          ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    InputFieldWidget(
                      context,
                      name: 'email',
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        context
                            .read<SignUpBloc>()
                            .add(SignUpEvent.emailChanged(value));
                      },
                      validator: (_) {
                        return context.read<SignUpBloc>().state.maybeMap(
                              editingForm: (s) => s.emailAddress.value.fold(
                                (f) => f.maybeMap(
                                  invalidEmail: (_) => 'Invalid email format',
                                  orElse: () => null,
                                ),
                                (r) => null,
                              ),
                              orElse: () => null,
                            );
                      },
                      initialValue: context.read<SignUpBloc>().state.maybeMap(
                            editingForm: (s) => s.emailAddress.value.fold(
                              (_) => '',
                              (value) => value,
                            ),
                            orElse: () => null,
                          ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    InputFieldWidget(
                      context,
                      name: 'password',
                      keyboardType: TextInputType.number,
                      isSecret: true,
                      onChanged: (value) {
                        context
                            .read<SignUpBloc>()
                            .add(SignUpEvent.passwordChanged(value));
                      },
                      validator: (_) {
                        return context.read<SignUpBloc>().state.maybeMap(
                              editingForm: (s) => s.password.value.fold(
                                (f) => f.maybeMap(
                                  shortPassword: (_) =>
                                      'It must be at least 6 character long',
                                  orElse: () => null,
                                ),
                                (r) => null,
                              ),
                              orElse: () => null,
                            );
                      },
                      initialValue: context.read<SignUpBloc>().state.maybeMap(
                            editingForm: (s) => s.password.value.fold(
                              (_) => '',
                              (value) => value,
                            ),
                            orElse: () => null,
                          ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    DoubleRadioButtonWidget(
                      onTypeChosen: (value) {
                        displaySUField.value = value.contains('host');
                        displayTypeError.value = false;
                        context
                            .read<SignUpBloc>()
                            .add(SignUpEvent.typeChanged(value));
                      },
                    ),
                    if (displayTypeError.value) ...[
                      Text(
                        "No type was selected",
                        style: context.headline6.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Colors.red,
                        ),
                      )
                    ] else ...[
                      Container(),
                    ],
                    if (displaySUField.value) ...[
                      InputFieldWidget(
                        context,
                        name: 'super user code',
                        keyboardType: TextInputType.number,
                        isSecret: true,
                        onChanged: (value) {
                          context
                              .read<SignUpBloc>()
                              .add(SignUpEvent.sucodeChanged(value));
                        },
                        validator: (_) {
                          return context.read<SignUpBloc>().state.maybeMap(
                                editingForm: (s) => s.sucode.value.fold(
                                  (f) => f.maybeMap(
                                    invalidCode: (_) => 'Invalid code format',
                                    orElse: () => null,
                                  ),
                                  (r) => null,
                                ),
                                orElse: () => null,
                              );
                        },
                      ),
                    ] else ...[
                      Container(),
                    ],
                    const SizedBox(
                      height: 8,
                    ),
                    InputFieldWidget(
                      context,
                      name: 'system code',
                      keyboardType: TextInputType.number,
                      isSecret: true,
                      onChanged: (value) {
                        context
                            .read<SignUpBloc>()
                            .add(SignUpEvent.syscodeChanged(value));
                      },
                      validator: (_) {
                        return context.read<SignUpBloc>().state.maybeMap(
                              editingForm: (s) => s.syscode.value.fold(
                                (f) => f.maybeMap(
                                  invalidCode: (_) => 'Invalid code format',
                                  orElse: () => null,
                                ),
                                (r) => null,
                              ),
                              orElse: () => null,
                            );
                      },
                      initialValue: context.read<SignUpBloc>().state.maybeMap(
                            editingForm: (s) => s.syscode.value.fold(
                              (_) => '',
                              (value) => value,
                            ),
                            orElse: () => null,
                          ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ImagePickerWidget(
                      description: "Choose 10 images\nof your face",
                      onImagePicked: (il) {
                        context
                            .read<SignUpBloc>()
                            .add(SignUpEvent.imagePickedChanged(il));
                      },
                    ),
                    if (displayNImagesError.value) ...[
                      Text(
                        "You must pick exactly 10 images",
                        style: context.headline6.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Colors.red,
                        ),
                      )
                    ] else ...[
                      Container(),
                    ],
                    const SizedBox(
                      height: 32,
                    ),
                    ButtonWidget(
                      name: "Sign Up",
                      icon: const ArrowIconWidget(),
                      onPressed: () async {
                        context.read<SignUpBloc>().add(
                              const SignUpEvent
                                  .signUpWithEmailAndPasswordPressed(),
                            );

                        // Decides whether to display or not the absence type error
                        displayTypeError.value =
                            context.read<SignUpBloc>().state.maybeMap(
                                  editingForm: (s) => s.type.value.fold(
                                    (f) => f.maybeMap(
                                      invalidUserType: (_) => true,
                                      orElse: () => true,
                                    ),
                                    (r) => false,
                                  ),
                                  orElse: () => false,
                                );

                        // Decides whether to display [invalidNumberOfImages] message error or not
                        displayNImagesError.value =
                            context.read<SignUpBloc>().state.maybeMap(
                                  editingForm: (s) => s.images.value.fold(
                                    (f) => f.maybeMap(
                                      invalidNumberOfImages: (_) => true,
                                      orElse: () => true,
                                    ),
                                    (r) => false,
                                  ),
                                  orElse: () => false,
                                );
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
