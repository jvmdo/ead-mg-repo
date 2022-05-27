import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ead_app/application/auth/change_email/change_email_bloc.dart';
import 'package:ead_app/injection.dart';
import 'package:ead_app/presentation/auth/change_email/image_widgets/email_guy_svg.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';
import 'package:ead_app/presentation/widgets/back_button_widget.dart';
import 'package:ead_app/presentation/widgets/background_widget.dart';
import 'package:ead_app/presentation/widgets/button_widget.dart';
import 'package:ead_app/presentation/widgets/dismiss_keyboard_widget.dart';
import 'package:ead_app/presentation/widgets/icons/arrow_icon_widget.dart';
import 'package:ead_app/presentation/widgets/input_field_widget.dart';

class ChangeEmailPage extends StatelessWidget {
  const ChangeEmailPage({Key? key}) : super(key: key);

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
          create: (context) => getIt<ChangeEmailBloc>(),
          child: BlocConsumer<ChangeEmailBloc, ChangeEmailState>(
            listener: (context, state) {
              state.authFailureOrSuccessOption.fold(
                () {},
                (either) => either.fold(
                  (failure) {
                    FlushbarHelper.createError(
                      message: failure.maybeMap(
                        emailAlreadyInUse: (_) => 'Email already in use',
                        requiresRecentLogin: (_) =>
                            'For your security, relogin then try again.',
                        orElse: () => "An internal error ocurred",
                      ),
                    ).show(context);
                  },
                  (_) {
                    FlushbarHelper.createSuccess(
                      message: "Email sent. Check your inbox.",
                    ).show(context);
                    // wait 3 secs then automatically returns to profile page
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
                      const EmailGuySVG(),
                      BackgroundWidget(
                        height: 554,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24.0,
                            vertical: 18.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Change email",
                                style: context.headline1,
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Text(
                                "Enter your new email address\n"
                                "below then we will send you a\n"
                                "confirmation to the old email.",
                                textAlign: TextAlign.justify,
                                style: context.headline3,
                              ),
                              const SizedBox(
                                height: 70,
                              ),
                              InputFieldWidget(
                                context,
                                name: "new email",
                                onChanged: (value) => context
                                    .read<ChangeEmailBloc>()
                                    .add(ChangeEmailEvent.emailChanged(value)),
                                validator: (_) => context
                                    .read<ChangeEmailBloc>()
                                    .state
                                    .emailAddress
                                    .value
                                    .fold(
                                      (f) => f.maybeMap(
                                        invalidEmail: (_) => 'Invalid email',
                                        orElse: () => null,
                                      ),
                                      (_) => null,
                                    ),
                              ),
                              const SizedBox(
                                height: 160,
                              ),
                              ButtonWidget(
                                name: "Change email",
                                icon: const ArrowIconWidget(),
                                onPressed: () {
                                  context.read<ChangeEmailBloc>().add(
                                        const ChangeEmailEvent
                                            .sendChangeEmailPressed(),
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
