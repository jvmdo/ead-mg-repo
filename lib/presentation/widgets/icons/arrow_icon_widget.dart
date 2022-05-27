import 'package:flutter/material.dart';
import 'package:ead_app/helpers/svg/svg.dart';

class ArrowIconWidget extends StatelessWidget {
  const ArrowIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: [
        Positioned(
          left: 12,
          top: 15,
          child: SvgWidget(
            painters: [
              SvgPathPainter.stroke(
                2.0,
                strokeJoin: StrokeJoin.miter,
              )
                ..addPath(
                    'M39.4148 0.707107C39.8053 0.316583 39.8053 -0.316583 39.4148 -0.707107L33.0508 -7.07107C32.6603 -7.46159 32.0271 -7.46159 31.6366 -7.07107C31.2461 -6.68054 31.2461 -6.04738 31.6366 -5.65685L37.2935 0L31.6366 5.65685C31.2461 6.04738 31.2461 6.68054 31.6366 7.07107C32.0271 7.46159 32.6603 7.46159 33.0508 7.07107L39.4148 0.707107ZM0 1L38.7077 1L38.7077 -1L0 -1L0 1Z')
                ..color = Theme.of(context).backgroundColor,
            ],
          ),
        )
      ],
    );
  }
}
