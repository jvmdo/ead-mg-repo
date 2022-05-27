import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ead_app/application/auth/auth_bloc.dart';
import 'package:ead_app/presentation/routes/router.gr.dart';

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (user) {
            return context.router.replace(const BaseRoute());
          },
          unauthenticated: (_) => context.router.replace(const SignInRoute()),
        );
      },
      child: const Scaffold(
        //* SplashScreen would fit here
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
