import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ead_app/presentation/users/add_user/add_user_page.dart';
import 'package:ead_app/presentation/users/all_users/all_users_page.dart';
import 'package:ead_app/presentation/root/base_page.dart';
import 'package:ead_app/presentation/auth/change_email/change_email_page.dart';
import 'package:ead_app/presentation/auth/change_password/change_password_page.dart';
import 'package:ead_app/presentation/notifications/door_notification/door_notification_page.dart';
import 'package:ead_app/presentation/notifications/notification/notification_page.dart';
import 'package:ead_app/presentation/notifications/notifications_history/notifications_history_page.dart';
import 'package:ead_app/presentation/auth/recover_password/recover_password_page.dart';
import 'package:ead_app/presentation/root/root_page.dart';
import 'package:ead_app/presentation/auth/sign_in/sign_in_page.dart';
import 'package:ead_app/presentation/auth/sign_up/sign_up_page.dart';
import 'package:ead_app/presentation/door/the_door/the_door_page.dart';
import 'package:ead_app/presentation/users/user_history/user_history_page.dart';
import 'package:ead_app/presentation/users/user_profile/user_profile_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: RootPage,
    ),
    AutoRoute(
      path: 'sign-in',
      page: SignInPage,
    ),
    AutoRoute(
      path: 'sign-up',
      page: SignUpPage,
    ),
    AutoRoute(
      path: 'recover-password',
      page: RecoverPasswordPage,
    ),
    AutoRoute(
      path: 'bottom-bar',
      page: BasePage,
      children: [
        AutoRoute(
          initial: true,
          path: 'the-door',
          page: TheDoorPage,
        ),
        AutoRoute(
          path: 'notifications-history',
          page: NotificationsHistoryPage,
        ),
      ],
    ),
    AutoRoute(
      path: 'door-notification-page',
      page: DoorNotificationPage,
    ),
    AutoRoute(
      path: 'notification-page',
      page: NotificationPage,
    ),
    AutoRoute(
      path: 'user-profile',
      page: UserProfilePage,
    ),
    AutoRoute(
      path: 'add-user',
      page: AddUserPage,
    ),
    AutoRoute(
      path: 'users-list',
      page: AllUsersPage,
    ),
    AutoRoute(
      path: 'user-history',
      page: UserHistoryPage,
    ),
    AutoRoute(
      path: 'change-email',
      page: ChangeEmailPage,
    ),
    AutoRoute(
      path: 'change-password',
      page: ChangePasswordPage,
    ),
    /* AutoRoute(
      fullscreenDialog: true,
      path: 'note-form',
      page: NoteFormPage,
    ), */
  ],
)
class $AppRouter {}
