import 'package:flutter/widgets.dart';

class TransformHelper {
  static Transform rotate({
    required double a,
    required double b,
    required double c,
    required double d,
    required Widget child,
  }) {
    return Transform(
      transform: Matrix4(a, c, 0, 0, b, d, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
      alignment: Alignment.topLeft,
      child: child,
    );
  }

  static Transform scale({
    required double x,
    required double y,
    required double z,
    required Widget child,
  }) {
    return Transform(
      transform: Matrix4(x, 0, 0, 0, 0, y, 0, 0, 0, 0, z, 0, 0, 0, 0, 1),
      alignment: Alignment.topLeft,
      child: child,
    );
  }

  static Transform translate({
    required double x,
    required double y,
    required double z,
    required Widget child,
  }) {
    return Transform(
      transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, x, y, z, 1),
      alignment: Alignment.topLeft,
      child: child,
    );
  }

  static Transform translateAndScale({
    required double translateX,
    required double translateY,
    required double translateZ,
    required double scaleX,
    required double scaleY,
    required double scaleZ,
    required Widget child,
  }) {
    return Transform(
      transform: Matrix4(scaleX, 0, 0, 0, 0, scaleY, 0, 0, 0, 0, scaleZ, 0,
          translateX, translateY, translateZ, 1),
      alignment: Alignment.topLeft,
      child: child,
    );
  }
}
