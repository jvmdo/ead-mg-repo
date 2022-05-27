import 'package:flutter/material.dart';
import 'package:ead_app/presentation/core/app_theme_x.dart';

class DoorIconWidget extends StatelessWidget {
  const DoorIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.door_back_door,
      size: 30.0,
      color: context.backgroundColor,
    );
  }
}
