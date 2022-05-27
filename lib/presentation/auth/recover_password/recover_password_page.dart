import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ead_app/application/auth/recover_password/recover_password_bloc.dart';
import 'package:ead_app/injection.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';
import 'package:ead_app/presentation/auth/recover_password/image_widgets/recover_girl_svg.dart';
import 'package:ead_app/presentation/widgets/back_button_widget.dart';
import 'package:ead_app/presentation/widgets/background_widget.dart';
import 'package:ead_app/presentation/widgets/button_widget.dart';
import 'package:ead_app/presentation/widgets/dismiss_keyboard_widget.dart';
import 'package:ead_app/presentation/widgets/icons/arrow_icon_widget.dart';
import 'package:ead_app/presentation/widgets/input_field_widget.dart';

class RecoverPasswordPage extends StatelessWidget {
  const RecoverPasswordPage({Key? key}) : super(key: key);

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
          create: (context) => getIt<RecoverPasswordBloc>(),
          child: BlocConsumer<RecoverPasswordBloc, RecoverPasswordState>(
            listener: (context, state) {
              state.authFailureOrSuccessOption.fold(
                () {},
                (either) => either.fold(
                  (failure) {
                    FlushbarHelper.createError(
                      message: failure.maybeMap(
                        userNotFound: (_) => 'Wrong email. Try again.',
                        orElse: () => "An internal error ocurred.",
                      ),
                    ).show(context);
                  },
                  (_) {
                    FlushbarHelper.createSuccess(
                      message: "Email sent. Check your inbox.",
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
                      const RecoverGirlSVG(),
                      BackgroundWidget(
                        height: 522,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24.0,
                            vertical: 18.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Recover Password",
                                style: context.headline1,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Enter your registered email\naddress below then we will\nsend you steps to recover\nyour forgotten password",
                                textAlign: TextAlign.justify,
                                style: context.headline3,
                              ),
                              const SizedBox(
                                height: 60,
                              ),
                              InputFieldWidget(
                                context,
                                name: "your registered email",
                                onChanged: (value) => context
                                    .read<RecoverPasswordBloc>()
                                    .add(
                                      RecoverPasswordEvent.emailChanged(value),
                                    ),
                                validator: (_) => context
                                    .read<RecoverPasswordBloc>()
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
                                height: 150,
                              ),
                              ButtonWidget(
                                name: "Send email",
                                icon: const ArrowIconWidget(),
                                onPressed: () {
                                  context.read<RecoverPasswordBloc>().add(
                                        const RecoverPasswordEvent
                                            .sendRecoverPasswordEmailPressed(),
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
