import 'package:flutter/material.dart';
import 'package:ead_app/helpers/svg/svg.dart';

class LockIconWidget extends StatelessWidget {
  const LockIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: [
        Positioned(
          width: 18.375,
          height: 21.0,
          child: SvgWidget(
            painters: [
              SvgPathPainter.fill()
                ..addPath(
                    'M16.4062 9.1875L15.4219 9.1875L15.4219 6.23438C15.4219 2.79727 12.6246 0 9.1875 0C5.75039 0 2.95312 2.79727 2.95312 6.23438L2.95312 9.1875L1.96875 9.1875C0.881836 9.1875 0 10.0693 0 11.1562L0 19.0312C0 20.1182 0.881836 21 1.96875 21L16.4062 21C17.4932 21 18.375 20.1182 18.375 19.0312L18.375 11.1562C18.375 10.0693 17.4932 9.1875 16.4062 9.1875ZM12.1406 9.1875L6.23438 9.1875L6.23438 6.23438C6.23438 4.60605 7.55918 3.28125 9.1875 3.28125C10.8158 3.28125 12.1406 4.60605 12.1406 6.23438L12.1406 9.1875Z')
                ..color = Theme.of(context).backgroundColor,
            ],
          ),
        ),
      ],
    );
  }
}
