import 'package:flutter/material.dart';
import 'package:ead_app/helpers/svg/svg.dart';

class UnlockIconWidget extends StatelessWidget {
  const UnlockIconWidget({Key? key}) : super(key: key);

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
                    'M16.4062 10.5L6.23438 10.5L6.23438 6.27133C6.23438 4.64711 7.53457 3.2977 9.15879 3.28129C10.7994 3.26488 12.1406 4.59789 12.1406 6.23442L12.1406 6.89067C12.1406 7.43617 12.5795 7.87504 13.125 7.87504L14.4375 7.87504C14.983 7.87504 15.4219 7.43617 15.4219 6.89067L15.4219 6.23442C15.4219 2.7891 12.6123 -0.0122643 9.16699 4.03806e-05C5.72168 0.0123451 2.95312 2.85063 2.95312 6.29594L2.95312 10.5L1.96875 10.5C0.881836 10.5 0 11.3819 0 12.4688L0 19.0313C0 20.1182 0.881836 21 1.96875 21L16.4062 21C17.4932 21 18.375 20.1182 18.375 19.0313L18.375 12.4688C18.375 11.3819 17.4932 10.5 16.4062 10.5Z')
                ..color = Theme.of(context).backgroundColor,
            ],
          ),
        ),
      ],
    );
  }
}
