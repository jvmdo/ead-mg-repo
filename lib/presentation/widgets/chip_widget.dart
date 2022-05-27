/* import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      height: 20.0,
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Positioned(
            width: 100.0,
            height: 20.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Container(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
          Positioned(
            left: 27.0,
            top: 3.0,
            right: null,
            bottom: null,
            width: 51.0,
            height: 19.0,
            child: Text(
              '''unkown''',
              overflow: TextOverflow.visible,
              textAlign: TextAlign.left,
              style: TextStyle(
                height: 1.171875,
                fontSize: 12.0,
                fontFamily: 'Rubik',
                fontWeight: FontWeight.w500,
                color: Theme.of(context).highlightColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
 */

import 'package:flutter/material.dart';
import 'package:ead_app/presentation/core/app_theme_x.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({
    Key? key,
    required this.description,
    required this.onTap,
    this.icon,
  }) : super(key: key);

  final String description;
  final VoidCallback onTap;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Material(
        child: InkWell(
          onTap: onTap,
          splashColor: context.highlightColor,
          child: Container(
            width: 100.0,
            height: 20.0,
            color: context.inputColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  description,
                  style: context.chipStyle,
                ),
                if (icon != null)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(width: 4.0),
                      icon!,
                    ],
                  )
                else
                  Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
