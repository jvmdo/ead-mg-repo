import 'package:flutter/material.dart';
import 'package:ead_app/presentation/core/app_theme_x.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    required this.name,
    required this.icon,
    required this.onPressed,
    this.isDoorOpen = false,
    this.disable = false,
    Key? key,
  }) : super(key: key);

  final String name;
  final Widget icon;
  final VoidCallback onPressed;
  final bool isDoorOpen;
  final bool disable;

  @override
  Widget build(BuildContext context) {
    final buttonColor = isDoorOpen ? context.warningColor : context.inputColor;

    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(9.0),
            splashColor: buttonColor,
            onTap: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: context.buttonStyle,
                ),
                SizedBox(
                  width: 64.0,
                  height: 32.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9.0),
                    child: Container(
                      color: buttonColor,
                      child: icon,
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (disable) ...[
            Container(
              color: context.backgroundColor.withAlpha(200),
              height: 32.0,
            )
          ],
        ],
      ),
    );
  }
}
