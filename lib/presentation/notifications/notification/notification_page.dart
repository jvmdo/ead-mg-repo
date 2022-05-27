import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:ead_app/domain/notifications/notifications.dart';
import 'package:ead_app/presentation/core/app_theme_x.dart';
import 'package:ead_app/presentation/core/date_time_x.dart';
import 'package:ead_app/presentation/core/string_x.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';
import 'package:ead_app/presentation/widgets/avatar_widget.dart';
import 'package:ead_app/presentation/widgets/back_button_widget.dart';
import 'package:ead_app/presentation/widgets/background_widget.dart';
import 'package:ead_app/presentation/widgets/button_widget.dart';
import 'package:ead_app/presentation/widgets/divider_widget.dart';
import 'package:ead_app/presentation/widgets/drawer_button_widget.dart';
import 'package:ead_app/presentation/side_menu/drawer_body.dart';
import 'package:ead_app/presentation/widgets/icons/download_icon_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({
    required this.notification,
    Key? key,
  }) : super(key: key);

  final Notification notification;

  @override
  Widget build(BuildContext context) {
    final bool isKnown = notification.recognized;
    final Color color = isKnown ? context.scaffoldColor : context.warningColor;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("Notification"),
        leading: BackButtonWidget(
          backRoute: () => context.router.pop(),
        ),
        actions: const [DrawerButtonWidget()],
      ),
      endDrawer: const DrawerPageBody(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 254,
                width: 412,
                color: color,
              ),
              BackgroundWidget(
                height: 520.8,
                isRounded: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32.0,
                    vertical: 12.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 164,
                      ),
                      Text(
                        notification.name.getOrCrash().inCaps,
                        style: context.headline1,
                      ),
                      const DividerWidget(
                        height: 32.0,
                      ),
                      Text(
                        "Date time",
                        style: context.headline2,
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            notification.datetime
                                .getOrCrash()
                                .getWeekdayString(),
                            style: context.headline3,
                          ),
                          Text(
                            notification.datetime.getOrCrash().getHourString(),
                            style: context.headline3,
                          ),
                          Text(
                            notification.datetime.getOrCrash().getDateString(),
                            style: context.headline3,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      const DividerWidget(
                        height: 32.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Answer",
                            style: context.headline2,
                          ),
                          Text(
                            notification.answer.getOrCrash().inCaps,
                            style: context.headline3,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "By",
                            style: context.headline2,
                          ),
                          Text(
                            notification.answeredBy.getOrCrash(),
                            style: context.headline3,
                          ),
                        ],
                      ),
                      const DividerWidget(),
                      ButtonWidget(
                        name: "Save",
                        icon: const DownloadIconWidget(),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 31.0,
            top: 75.0,
            child: AvatarWidget(
              radius: 175,
              imageUrl: notification.picture.getOrCrash(),
            ),
          ),
        ],
      ),
    );
  }
}
