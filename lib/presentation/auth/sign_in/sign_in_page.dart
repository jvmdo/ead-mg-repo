import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ead_app/application/auth/auth_bloc.dart';
import 'package:ead_app/application/auth/sign_in/sign_in_bloc.dart';
import 'package:ead_app/injection.dart';
import 'package:ead_app/presentation/routes/router.gr.dart';
import 'package:ead_app/presentation/auth/sign_in/sign_in_form.dart';
import 'package:ead_app/presentation/widgets/dismiss_keyboard_widget.dart';
import 'package:ead_app/presentation/widgets/loading_screen_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DismissKeyboardWidget(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => getIt<SignInBloc>(),
          child: BlocConsumer<SignInBloc, SignInState>(
            listener: (context, state) {
              if (state is LoginFailure) {
                context.read<SignInBloc>().emit(state.formState as EditingForm);
                FlushbarHelper.createError(
                  message: state.failure.maybeMap(
                    invalidEmailAndPasswordCombination: (_) =>
                        'Invalid email and password combination',
                    userNotFound: (_) =>
                        'There is no registered user for this email',
                    serverError: (_) => 'Server error',
                    orElse: () => 'It should not been happened',
                  ),
                ).show(context);
              } else if (state is LoginSuccess) {
                context.read<AuthBloc>().add(const AuthEvent.signedIn());
                context.router.replace(const BaseRoute());
              }
            },
            builder: (context, states) {
              return states.maybeMap(
                editingForm: (state) {
                  return SignInForm(context: context);
                },
                loginInProgress: (_) {
                  return LoadingScreenWidget(
                    actualScreen: SignInForm(context: context),
                  );
                },
                orElse: () {
                  return SignInForm(context: context);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
