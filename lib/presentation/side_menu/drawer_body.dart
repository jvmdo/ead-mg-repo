import 'dart:developer';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ead_app/application/auth/auth_bloc.dart';
import 'package:ead_app/application/auth/sign_out/sign_out_bloc.dart';
import 'package:ead_app/domain/users/user.dart';
import 'package:ead_app/injection.dart';
import 'package:ead_app/presentation/core/app_theme.dart';
import 'package:ead_app/presentation/core/app_theme_x.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';
import 'package:ead_app/presentation/routes/router.gr.dart';
import 'package:ead_app/presentation/widgets/avatar_widget.dart';
import 'package:ead_app/presentation/widgets/divider_widget.dart';
import 'package:ead_app/presentation/widgets/icons/chartline_icon_widget.dart';
import 'package:ead_app/presentation/widgets/icons/cog_icon_widget.dart';
import 'package:ead_app/presentation/widgets/icons/moon_icon_widget.dart';
import 'package:ead_app/presentation/widgets/icons/newspaper_icon_widget.dart';
import 'package:ead_app/presentation/widgets/icons/question_icon_widget.dart';
import 'package:ead_app/presentation/widgets/icons/signout_icon_widget.dart';
import 'package:ead_app/presentation/widgets/icons/user_circle_icon_widget.dart';
import 'package:ead_app/presentation/widgets/icons/user_list_icon_widget.dart';
import 'package:ead_app/presentation/widgets/icons/user_plus_icon_widget.dart';
import 'package:ead_app/presentation/widgets/icons/x_exit_icon_widget.dart';

class DrawerPageBody extends StatelessWidget {
  const DrawerPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.appTheme.copyWith(
        textTheme: TextTheme(
          bodyText1: context.drawerStyle,
        ),
        dividerTheme: DividerThemeData(
          color: context.highlightColor,
        ),
      ),
      child: BlocProvider(
        create: (context) => getIt<SignOutBloc>(),
        child: SizedBox(
          width: 205,
          child: BlocConsumer<SignOutBloc, SignOutState>(
            listener: (context, state) {
              state.authFailureOrSuccessOption.fold(
                () {},
                (either) => either.fold(
                  (failure) {
                    FlushbarHelper.createError(
                      message: failure.maybeMap(
                        serverError: (_) =>
                            'Could not sign out. Please, try again later',
                        orElse: () => "Unknown error",
                      ),
                    ).show(context);
                  },
                  (_) {
                    context.router.replace(const SignInRoute());
                    context.read<AuthBloc>().add(const AuthEvent.signedOut());
                  },
                ),
              );
            },
            builder: (context, state) {
              return context.read<AuthBloc>().state.maybeMap(
                authenticated: (auth) {
                  return DrawerBody(
                    userName: auth.user.name.getOrCrash(),
                    userImage: AvatarWidget(
                      // At the first sign in, the profile picture url is not
                      // properly set. Therefore, dummy is used.
                      imageUrl: auth.user.profilePicture.isValid()
                          ? auth.user.profilePicture.getOrCrash()
                          : User.dummy().profilePicture.getOrCrash(),
                    ),
                  );
                },
                orElse: () {
                  //* It takes a while until auth state is ready.
                  //* This dummy will be displayed instead
                  return DrawerBody(
                    userName: User.dummy().name.getOrCrash(),
                    userImage: AvatarWidget(
                      imageUrl: User.dummy().profilePicture.getOrCrash(),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class DrawerBody extends StatelessWidget {
  const DrawerBody({
    Key? key,
    required this.userName,
    required this.userImage,
    this.onTap = const {
      "profile": null,
      "addUser": null,
      "userList": null,
      "recentlyActs": null,
      "statistics": null,
      "signOut": null,
      "darkMode": null,
      "settings": null,
      "feedback": null,
    },
  }) : super(key: key);

  final String userName;
  final Widget userImage;
  final Map<String, VoidCallback?>? onTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          xExitButton(context),
          userHeaderWidget(context, userImage, userName),
          const DividerWidget(
            height: 12.0,
            indent: 12.0,
            endIndent: 12.0,
          ),
          drawerItem(
            const UserCircleIconWidget(),
            'Profile',
            onTap?["profile"] ?? () => context.router.push(UserProfileRoute()),
          ),
          drawerItem(
            const UserPlusIconWidget(),
            'Add user',
            onTap?["addUser"] ??
                () => context.router.push(const AddUserRoute()),
          ),
          drawerItem(
            const UserListIconWidget(),
            'Users list',
            onTap?["usersList"] ??
                () => context.router.push(const AllUsersRoute()),
          ),
          drawerItem(
            const NewspaperIconWidget(),
            'Recently acts',
            onTap?["recentlyActs"] ?? () => log("You tapped on Recently acts"),
          ),
          drawerItem(
            const ChartlineIconWidget(),
            'Statistics',
            onTap?["statistics"] ?? () => log("You tapped on Statistics"),
          ),
          const SizedBox(
            height: 190,
          ),
          drawerItem(
            const SignoutIconWidget(),
            'Sign out',
            onTap?["signOut"] ??
                () => context
                    .read<SignOutBloc>()
                    .add(const SignOutEvent.signOutPressed()),
          ),
          const DividerWidget(
            height: 12.0,
            indent: 12.0,
            endIndent: 12.0,
          ),
          drawerItem(
            const MoonIconWidget(),
            'Dark mode',
            onTap?["darkMode"] ?? () => log("You changed the theme mode"),
            Icon(
              Icons.toggle_off,
              color: context.highlightColor,
              size: 36.0,
            ),
          ),
          drawerItem(
            const CogIconWidget(),
            'Settings',
            onTap?["settings"] ?? () => log("Settings to be implemented"),
          ),
          drawerItem(
            const QuestionIconWidget(),
            'Help and feedback',
            onTap?["feedback"] ?? () => log("Help and feedback"),
          ),
        ],
      ),
    );
  }

  ListTile drawerItem(
    Widget icon,
    String description,
    VoidCallback onTap, [
    Widget? trailing,
  ]) {
    return ListTile(
      dense: true,
      horizontalTitleGap: -5.0,
      leading: icon,
      trailing: trailing,
      title: Text(description),
      onTap: onTap,
    );
  }

  Padding userHeaderWidget(
    BuildContext context,
    Widget userImage,
    String userName,
  ) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, bottom: 12.0),
      child: Row(
        children: [
          userImage,
          const SizedBox(
            width: 12,
          ),
          Text(
            "Welcome,\n${userName.split(' ')[0]}.",
            style: context.headline3.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: context.highlightColor,
            ),
          ),
        ],
      ),
    );
  }

  Row xExitButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          icon: const XExitIconWidget(),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }
}
