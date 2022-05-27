import 'package:flutter/material.dart';
import 'package:ead_app/presentation/core/app_theme_x.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    required this.child,
    this.height = 558.0,
    this.isRounded = true,
    Key? key,
  }) : super(key: key);

  final double height;
  final bool isRounded;
  final Widget child; // What about List<Widget>?

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 412.0,
      height: height,
      child: ClipRRect(
        borderRadius: isRounded
            ? const BorderRadius.only(
                topLeft: Radius.circular(45.0),
                topRight: Radius.circular(45.0),
              )
            : BorderRadius.circular(0.0),
        child: Container(
          color: context.backgroundColor,
          child: child,
        ),
      ),
    );
  }
}
