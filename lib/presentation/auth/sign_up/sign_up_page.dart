import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ead_app/application/auth/sign_up/sign_up_bloc.dart';
import 'package:ead_app/injection.dart';
import 'package:ead_app/presentation/auth/sign_up/sign_up_form.dart';
import 'package:ead_app/presentation/widgets/back_button_widget.dart';
import 'package:ead_app/presentation/widgets/dismiss_keyboard_widget.dart';
import 'package:ead_app/presentation/widgets/loading_screen_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
          create: (context) => getIt<SignUpBloc>(),
          child: BlocConsumer<SignUpBloc, SignUpState>(
            listener: (context, state) {
              if (state is EditingForm && state.displayFailure) {
                FlushbarHelper.createError(
                  message: state.failure!.maybeMap(
                    functionExecutionError: (_) =>
                        'Backend problem. Try again later.',
                    wrongCodes: (_) =>
                        'Invalid codes. Please, check them and try again.',
                    uploadError: (_) => 'Upload error. Please, try again.',
                    emailAlreadyInUse: (_) => 'Email already in use',
                    serverError: (_) => 'Server error',
                    orElse: () => 'It should not been happened',
                  ),
                ).show(context);
              } else if (state is CreatingSuccess) {
                FlushbarHelper.createSuccess(
                  message: "Account created successfully. " +
                      "You can now log in into the app.",
                ).show(context);

                // wait 5 secs then automatically returns to sign in page
                Future.delayed(const Duration(seconds: 5)).then(
                  (value) => context.router.pop(),
                );
              }
            },
            builder: (context, states) {
              return states.maybeMap(
                editingForm: (state) {
                  return SignUpForm(context: context);
                },
                creatingInProgress: (state) {
                  return LoadingScreenWidget(
                    actualScreen: SignUpForm(context: context),
                  );
                },
                orElse: () {
                  return SignUpForm(context: context);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
