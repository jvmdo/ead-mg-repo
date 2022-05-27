import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';
import 'package:ead_app/presentation/routes/router.gr.dart';
import 'package:ead_app/presentation/widgets/bottom_bar_widget.dart';
import 'package:ead_app/presentation/widgets/drawer_button_widget.dart';
import 'package:ead_app/presentation/side_menu/drawer_body.dart';

class BasePage extends StatelessWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      extendBodyBehindAppBar: true,
      appBarBuilder: (_, tabsRouter) {
        return AppBar(
          title: Text(
            tabsRouter.activeIndex == 1
                ? 'The door is'
                : 'Notifications history',
            style: context.headline1,
          ),
          actions: const [
            DrawerButtonWidget(),
          ],
        );
      },
      endDrawer: const DrawerPageBody(),
      routes: [
        const NotificationsHistoryRoute(),
        TheDoorRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomBarWidget(tabsRouter);
      },
    );
  }
}
