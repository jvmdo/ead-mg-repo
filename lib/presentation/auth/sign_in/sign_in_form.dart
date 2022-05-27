import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ead_app/application/auth/sign_in/sign_in_bloc.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';
import 'package:ead_app/presentation/routes/router.gr.dart';
import 'package:ead_app/presentation/auth/sign_in/image_widgets/home_door_svg.dart';
import 'package:ead_app/presentation/widgets/background_widget.dart';
import 'package:ead_app/presentation/widgets/button_widget.dart';
import 'package:ead_app/presentation/widgets/icons/arrow_icon_widget.dart';
import 'package:ead_app/presentation/widgets/input_field_widget.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(
              height: 24,
            ),
            const HomeDoorSVG(),
            BackgroundWidget(
              height: 580,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login into \nyour account",
                      style: context.headline1,
                    ),
                    const SizedBox(
                      height: 48.0,
                    ),
                    InputFieldWidget(
                      context,
                      name: "email",
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) => context
                          .read<SignInBloc>()
                          .add(SignInEvent.emailChanged(value)),
                      validator: (_) =>
                          context.read<SignInBloc>().state.maybeMap(
                                editingForm: (s) => s.email.value.fold(
                                  (f) => f.maybeMap(
                                    invalidEmail: (_) => 'Invalid email',
                                    orElse: () => null,
                                  ),
                                  (_) => null,
                                ),
                                orElse: () => null,
                              ),
                      initialValue: context.read<SignInBloc>().state.maybeMap(
                            editingForm: (s) => s.email.value.fold(
                              (_) => '',
                              (value) => value,
                            ),
                            orElse: () => null,
                          ),
                    ),
                    const SizedBox(
                      height: 32.0,
                    ),
                    InputFieldWidget(
                      context,
                      name: "password",
                      isSecret: true,
                      keyboardType: TextInputType.number,
                      onChanged: (value) => context
                          .read<SignInBloc>()
                          .add(SignInEvent.passwordChanged(value)),
                      validator: (_) =>
                          context.read<SignInBloc>().state.maybeMap(
                                editingForm: (s) => s.password.value.fold(
                                  (f) => f.maybeMap(
                                    shortPassword: (_) => 'Short password',
                                    orElse: () => null,
                                  ),
                                  (_) => null,
                                ),
                                orElse: () => null,
                              ),
                      initialValue: context.read<SignInBloc>().state.maybeMap(
                            editingForm: (s) => s.password.value.fold(
                              (_) => '',
                              (value) => value,
                            ),
                            orElse: () => null,
                          ),
                    ),
                    const SizedBox(
                      height: 144.0,
                    ),
                    ButtonWidget(
                      name: "Sign In",
                      icon: const ArrowIconWidget(),
                      onPressed: () {
                        context.read<SignInBloc>().add(
                              const SignInEvent
                                  .signInWithEmailAndPasswordPressed(),
                            );
                      },
                    ),
                    const SizedBox(
                      height: 36.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Do not have an account? ",
                          style: context.headline6,
                        ),
                        InkWell(
                          onTap: () {
                            context.router.push(const SignUpRoute());
                          },
                          child: Text(
                            "Sign Up!",
                            style: context.headline6.copyWith(
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot your password? ",
                          style: context.headline6,
                        ),
                        InkWell(
                          onTap: () {
                            context.router.push(const RecoverPasswordRoute());
                          },
                          child: Text(
                            "Recover it!",
                            style: context.headline6.copyWith(
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )
                      ],
                    ),
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
