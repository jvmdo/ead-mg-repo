import 'package:flutter/material.dart';
import 'package:ead_app/presentation/widgets/background_widget.dart';
import 'package:ead_app/presentation/widgets/drawer_button_widget.dart';
import 'package:ead_app/presentation/side_menu/drawer_body.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Drawer"),
        actions: const [
          DrawerButtonWidget(),
        ],
      ),
      endDrawer: const DrawerPageBody(),
      body: BackgroundWidget(
        child: Column(
          children: [
            Container(),
          ],
        ),
      ),
    );
  }
}
