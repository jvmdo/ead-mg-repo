import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    this.height = 44.0,
    this.indent = 64.0,
    this.endIndent = 64.0,
    Key? key,
  }) : super(key: key);

  final double height;
  final double indent;
  final double endIndent;

  @override
  Widget build(BuildContext context) {
    return Divider(
      indent: indent,
      endIndent: endIndent,
      thickness: 0.5,
      height: height,
    );
  }
}
