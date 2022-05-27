import 'dart:async';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ead_app/application/auth/auth_bloc.dart';
import 'package:ead_app/application/notifications/notifications_history/notifications_history_bloc.dart';
import 'package:ead_app/injection.dart';
import 'package:ead_app/presentation/core/app_notification.dart';
import 'package:ead_app/presentation/core/app_theme.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';
import 'package:ead_app/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  final _appRouter = AppRouter();
  final _firebaseApp = Firebase.initializeApp();
  final _notification = AppNotification.initialize();
  final _messageHandler = AppNotification.onBackgroundMessage();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.signedIn()),
        ),
        BlocProvider<NotificationsHistoryBloc>(
          create: (context) => getIt<NotificationsHistoryBloc>()
            ..add(const NotificationsHistoryEvent.started()),
        ),
      ],
      child: FutureBuilder(
        future: Future.wait([_firebaseApp, _notification, _messageHandler]),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return MaterialApp(
              home: Scaffold(
                body: Center(
                  child: Text(
                    "FATAL ERROR\n\nPlease, restart the application",
                    textAlign: TextAlign.center,
                    style: context.errorStyle.copyWith(fontSize: 32),
                  ),
                ),
              ),
            );
          } else {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                //* SplashPage could fit here
                return const Center(
                  child: CircularProgressIndicator(),
                );

              case ConnectionState.active:
              case ConnectionState.done:
                // _useFirebaseEmulators(true);
                return MaterialApp.router(
                  routerDelegate: _appRouter.delegate(),
                  routeInformationParser: _appRouter.defaultRouteParser(),
                  debugShowCheckedModeBanner: false,
                  title: 'EAD App',
                  theme: AppTheme.appTheme,
                );
            }
          }
        },
      ),
    );
  }
}

void _useFirebaseEmulators([bool use = true]) {
  if (use) {
    // FirebaseAuth.instance.useAuthEmulator('127.0.0.1', 9099);
    // FirebaseFirestore.instance.useFirestoreEmulator('127.0.0.1', 8081);
    FirebaseFunctions.instance.useFunctionsEmulator('127.0.0.1', 5001);
    // FirebaseStorage.instance.useStorageEmulator('127.0.0.1', 9199);
  }
}
