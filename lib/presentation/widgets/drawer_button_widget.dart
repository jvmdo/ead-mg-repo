import 'package:flutter/material.dart';
import 'package:ead_app/presentation/widgets/icons/bars_icon_widget.dart';

class DrawerButtonWidget extends StatelessWidget {
  const DrawerButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return InkWell(
          child: const BarsIconWidget(),
          onTap: () {
            Scaffold.of(context).openEndDrawer();
          },
        );
      },
    );
  }
}
