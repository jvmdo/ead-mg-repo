import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ead_app/application/auth/auth_bloc.dart';
import 'package:ead_app/domain/users/user.dart';
import 'package:ead_app/presentation/core/date_time_x.dart';
import 'package:ead_app/presentation/core/string_x.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';
import 'package:ead_app/presentation/routes/router.gr.dart';
import 'package:ead_app/presentation/widgets/avatar_widget.dart';
import 'package:ead_app/presentation/widgets/back_button_widget.dart';
import 'package:ead_app/presentation/widgets/background_widget.dart';
import 'package:ead_app/presentation/widgets/divider_widget.dart';
import 'package:ead_app/presentation/widgets/grid_widget.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: BackButtonWidget(
          backRoute: () => context.router.pop(),
        ),
      ),
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          final User user = context.read<AuthBloc>().state.maybeMap(
                authenticated: (auth) => auth.user,
                orElse: () => User.empty(),
              );
          return Stack(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 130,
                  ),
                  BackgroundWidget(
                    height: 644,
                    isRounded: false,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 24.0,
                        right: 24.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 80,
                          ),
                          Text(
                            user.name.getOrCrash(),
                            style: context.headline1,
                          ),
                          Text(
                            user.type.getOrCrash().inCaps,
                            style: context.headline3.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const DividerWidget(),
                          GridWidget(
                            children: [
                              RowData(
                                description: "Status",
                                data: user.status,
                                alignment: TextAlign.start,
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              RowData(
                                description: "Since",
                                data:
                                    user.createdAt.getOrCrash().getDateString(),
                                alignment: TextAlign.start,
                              ),
                              const SizedBox(
                                height: 12.0,
                              ),
                              RowData(
                                description: "Syscode",
                                data: user.syscode.getOrCrash(),
                                isSecret: true,
                                alignment: TextAlign.start,
                              ),
                              if (user.sucode.getOrCrash() != '') ...[
                                RowData(
                                  description: "Sucode",
                                  data: user.sucode.getOrCrash(),
                                  isSecret: true,
                                  alignment: TextAlign.start,
                                )
                              ] else ...[
                                Container()
                              ],
                              RowData(
                                description: "Change\nemail",
                                data: user.email.getOrCrash(),
                                hasButton: true,
                                alignment: TextAlign.start,
                                btnFun: () {
                                  context.router.push(const ChangeEmailRoute());
                                },
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              RowData(
                                description: "Change password",
                                data: "",
                                hasButton: true,
                                btnFun: () => context.router
                                    .push(const ChangePasswordRoute()),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 54,
                left: 128,
                child: AvatarWidget(
                  radius: 75.0,
                  // At the first sign in, the profile picture url is not
                  // properly set. Therefore, dummy is used.
                  imageUrl: user.profilePicture.isValid()
                      ? user.profilePicture.getOrCrash()
                      : User.dummy().profilePicture.getOrCrash(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
