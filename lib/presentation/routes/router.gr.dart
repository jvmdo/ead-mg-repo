// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/material.dart' as _i17;

import '../../domain/notifications/notifications.dart' as _i18;
import '../../domain/users/user.dart' as _i19;
import '../auth/change_email/change_email_page.dart' as _i12;
import '../auth/change_password/change_password_page.dart' as _i13;
import '../auth/recover_password/recover_password_page.dart' as _i4;
import '../auth/sign_in/sign_in_page.dart' as _i2;
import '../auth/sign_up/sign_up_page.dart' as _i3;
import '../door/the_door/the_door_page.dart' as _i14;
import '../notifications/door_notification/door_notification_page.dart' as _i6;
import '../notifications/notification/notification_page.dart' as _i7;
import '../notifications/notifications_history/notifications_history_page.dart'
    as _i15;
import '../root/base_page.dart' as _i5;
import '../root/root_page.dart' as _i1;
import '../users/add_user/add_user_page.dart' as _i9;
import '../users/all_users/all_users_page.dart' as _i10;
import '../users/user_history/user_history_page.dart' as _i11;
import '../users/user_profile/user_profile_page.dart' as _i8;

class AppRouter extends _i16.RootStackRouter {
  AppRouter([_i17.GlobalKey<_i17.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    RootRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.RootPage());
    },
    SignInRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    SignUpRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignUpPage());
    },
    RecoverPasswordRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RecoverPasswordPage());
    },
    BaseRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.BasePage());
    },
    DoorNotificationRoute.name: (routeData) {
      final args = routeData.argsAs<DoorNotificationRouteArgs>();
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.DoorNotificationPage(
              notification: args.notification, key: args.key));
    },
    NotificationRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationRouteArgs>();
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.NotificationPage(
              notification: args.notification, key: args.key));
    },
    UserProfileRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.UserProfilePage());
    },
    AddUserRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.AddUserPage());
    },
    AllUsersRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.AllUsersPage());
    },
    UserHistoryRoute.name: (routeData) {
      final args = routeData.argsAs<UserHistoryRouteArgs>();
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i11.UserHistoryPage(user: args.user, key: args.key));
    },
    ChangeEmailRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.ChangeEmailPage());
    },
    ChangePasswordRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.ChangePasswordPage());
    },
    TheDoorRoute.name: (routeData) {
      final args = routeData.argsAs<TheDoorRouteArgs>(
          orElse: () => const TheDoorRouteArgs());
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i14.TheDoorPage(notification: args.notification, key: args.key));
    },
    NotificationsHistoryRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.NotificationsHistoryPage());
    }
  };

  @override
  List<_i16.RouteConfig> get routes => [
        _i16.RouteConfig(RootRoute.name, path: '/'),
        _i16.RouteConfig(SignInRoute.name, path: 'sign-in'),
        _i16.RouteConfig(SignUpRoute.name, path: 'sign-up'),
        _i16.RouteConfig(RecoverPasswordRoute.name, path: 'recover-password'),
        _i16.RouteConfig(BaseRoute.name, path: 'bottom-bar', children: [
          _i16.RouteConfig('#redirect',
              path: '',
              parent: BaseRoute.name,
              redirectTo: 'the-door',
              fullMatch: true),
          _i16.RouteConfig(TheDoorRoute.name,
              path: 'the-door', parent: BaseRoute.name),
          _i16.RouteConfig(NotificationsHistoryRoute.name,
              path: 'notifications-history', parent: BaseRoute.name)
        ]),
        _i16.RouteConfig(DoorNotificationRoute.name,
            path: 'door-notification-page'),
        _i16.RouteConfig(NotificationRoute.name, path: 'notification-page'),
        _i16.RouteConfig(UserProfileRoute.name, path: 'user-profile'),
        _i16.RouteConfig(AddUserRoute.name, path: 'add-user'),
        _i16.RouteConfig(AllUsersRoute.name, path: 'users-list'),
        _i16.RouteConfig(UserHistoryRoute.name, path: 'user-history'),
        _i16.RouteConfig(ChangeEmailRoute.name, path: 'change-email'),
        _i16.RouteConfig(ChangePasswordRoute.name, path: 'change-password')
      ];
}

/// generated route for [_i1.RootPage]
class RootRoute extends _i16.PageRouteInfo<void> {
  const RootRoute() : super(name, path: '/');

  static const String name = 'RootRoute';
}

/// generated route for [_i2.SignInPage]
class SignInRoute extends _i16.PageRouteInfo<void> {
  const SignInRoute() : super(name, path: 'sign-in');

  static const String name = 'SignInRoute';
}

/// generated route for [_i3.SignUpPage]
class SignUpRoute extends _i16.PageRouteInfo<void> {
  const SignUpRoute() : super(name, path: 'sign-up');

  static const String name = 'SignUpRoute';
}

/// generated route for [_i4.RecoverPasswordPage]
class RecoverPasswordRoute extends _i16.PageRouteInfo<void> {
  const RecoverPasswordRoute() : super(name, path: 'recover-password');

  static const String name = 'RecoverPasswordRoute';
}

/// generated route for [_i5.BasePage]
class BaseRoute extends _i16.PageRouteInfo<void> {
  const BaseRoute({List<_i16.PageRouteInfo>? children})
      : super(name, path: 'bottom-bar', initialChildren: children);

  static const String name = 'BaseRoute';
}

/// generated route for [_i6.DoorNotificationPage]
class DoorNotificationRoute
    extends _i16.PageRouteInfo<DoorNotificationRouteArgs> {
  DoorNotificationRoute(
      {required _i18.Notification notification, _i17.Key? key})
      : super(name,
            path: 'door-notification-page',
            args: DoorNotificationRouteArgs(
                notification: notification, key: key));

  static const String name = 'DoorNotificationRoute';
}

class DoorNotificationRouteArgs {
  const DoorNotificationRouteArgs({required this.notification, this.key});

  final _i18.Notification notification;

  final _i17.Key? key;
}

/// generated route for [_i7.NotificationPage]
class NotificationRoute extends _i16.PageRouteInfo<NotificationRouteArgs> {
  NotificationRoute({required _i18.Notification notification, _i17.Key? key})
      : super(name,
            path: 'notification-page',
            args: NotificationRouteArgs(notification: notification, key: key));

  static const String name = 'NotificationRoute';
}

class NotificationRouteArgs {
  const NotificationRouteArgs({required this.notification, this.key});

  final _i18.Notification notification;

  final _i17.Key? key;
}

/// generated route for [_i8.UserProfilePage]
class UserProfileRoute extends _i16.PageRouteInfo<void> {
  const UserProfileRoute() : super(name, path: 'user-profile');

  static const String name = 'UserProfileRoute';
}

/// generated route for [_i9.AddUserPage]
class AddUserRoute extends _i16.PageRouteInfo<void> {
  const AddUserRoute() : super(name, path: 'add-user');

  static const String name = 'AddUserRoute';
}

/// generated route for [_i10.AllUsersPage]
class AllUsersRoute extends _i16.PageRouteInfo<void> {
  const AllUsersRoute() : super(name, path: 'users-list');

  static const String name = 'AllUsersRoute';
}

/// generated route for [_i11.UserHistoryPage]
class UserHistoryRoute extends _i16.PageRouteInfo<UserHistoryRouteArgs> {
  UserHistoryRoute({required _i19.User user, _i17.Key? key})
      : super(name,
            path: 'user-history',
            args: UserHistoryRouteArgs(user: user, key: key));

  static const String name = 'UserHistoryRoute';
}

class UserHistoryRouteArgs {
  const UserHistoryRouteArgs({required this.user, this.key});

  final _i19.User user;

  final _i17.Key? key;
}

/// generated route for [_i12.ChangeEmailPage]
class ChangeEmailRoute extends _i16.PageRouteInfo<void> {
  const ChangeEmailRoute() : super(name, path: 'change-email');

  static const String name = 'ChangeEmailRoute';
}

/// generated route for [_i13.ChangePasswordPage]
class ChangePasswordRoute extends _i16.PageRouteInfo<void> {
  const ChangePasswordRoute() : super(name, path: 'change-password');

  static const String name = 'ChangePasswordRoute';
}

/// generated route for [_i14.TheDoorPage]
class TheDoorRoute extends _i16.PageRouteInfo<TheDoorRouteArgs> {
  TheDoorRoute({_i18.Notification? notification, _i17.Key? key})
      : super(name,
            path: 'the-door',
            args: TheDoorRouteArgs(notification: notification, key: key));

  static const String name = 'TheDoorRoute';
}

class TheDoorRouteArgs {
  const TheDoorRouteArgs({this.notification, this.key});

  final _i18.Notification? notification;

  final _i17.Key? key;
}

/// generated route for [_i15.NotificationsHistoryPage]
class NotificationsHistoryRoute extends _i16.PageRouteInfo<void> {
  const NotificationsHistoryRoute()
      : super(name, path: 'notifications-history');

  static const String name = 'NotificationsHistoryRoute';
}
