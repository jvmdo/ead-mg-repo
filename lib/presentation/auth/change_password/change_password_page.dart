import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ead_app/application/auth/change_password/change_password_bloc.dart';
import 'package:ead_app/injection.dart';
import 'package:ead_app/presentation/auth/change_password/image_widgets/password_girl_svg.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';
import 'package:ead_app/presentation/widgets/back_button_widget.dart';
import 'package:ead_app/presentation/widgets/background_widget.dart';
import 'package:ead_app/presentation/widgets/button_widget.dart';
import 'package:ead_app/presentation/widgets/dismiss_keyboard_widget.dart';
import 'package:ead_app/presentation/widgets/icons/arrow_icon_widget.dart';
import 'package:ead_app/presentation/widgets/input_field_widget.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DismissKeyboardWidget(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: BackButtonWidget(
            backRoute: () => context.router.pop(),
          ),
        ),
        body: BlocProvider(
          create: (context) => getIt<ChangePasswordBloc>(),
          child: BlocConsumer<ChangePasswordBloc, ChangePasswordState>(
            listener: (context, state) {
              state.authFailureOrSuccessOption.fold(
                () {},
                (either) => either.fold(
                  (failure) {
                    FlushbarHelper.createError(
                      message: failure.maybeMap(
                        requiresRecentLogin: (_) =>
                            'For your security, relogin then try again.',
                        orElse: () => "An internal error ocurred",
                      ),
                    ).show(context);
                  },
                  (_) {
                    FlushbarHelper.createSuccess(
                      message: "Password changed. Use it in your next login.",
                    ).show(context);
                    // wait 3 secs then automatically returns to sign in page
                    Future.delayed(const Duration(seconds: 3)).then(
                      (value) => context.router.pop(),
                    );
                  },
                ),
              );
            },
            builder: (context, state) {
              return Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const PasswordGirlSVG(),
                      BackgroundWidget(
                        height: 541,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24.0,
                            vertical: 18.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Change password",
                                style: context.headline1,
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Text(
                                "Enter your new password\n"
                                "below then we will change\n"
                                "it for you",
                                textAlign: TextAlign.justify,
                                style: context.headline3,
                              ),
                              const SizedBox(
                                height: 70,
                              ),
                              InputFieldWidget(
                                context,
                                name: "new password",
                                isSecret: true,
                                onChanged: (value) {
                                  context.read<ChangePasswordBloc>().add(
                                        ChangePasswordEvent.passwordChanged(
                                          value,
                                        ),
                                      );
                                },
                                validator: (_) => context
                                    .read<ChangePasswordBloc>()
                                    .state
                                    .newPassword
                                    .value
                                    .fold(
                                      (f) => f.maybeMap(
                                        shortPassword: (_) => 'Invalid passord',
                                        orElse: () => null,
                                      ),
                                      (r) => null,
                                    ),
                              ),
                              const SizedBox(
                                height: 160,
                              ),
                              ButtonWidget(
                                name: "Change password",
                                icon: const ArrowIconWidget(),
                                onPressed: () {
                                  context.read<ChangePasswordBloc>().add(
                                        const ChangePasswordEvent
                                            .changePasswordPressed(),
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
            },
          ),
        ),
      ),
    );
  }
}
