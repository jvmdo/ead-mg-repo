import 'package:flutter/material.dart';
import 'package:ead_app/presentation/widgets/icons/back_arrow_icon_widget.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    required this.backRoute,
    Key? key,
  }) : super(key: key);

  final VoidCallback backRoute;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(
        Radius.circular(36.0),
      ),
      onTap: backRoute,
      child: Container(
        height: 50,
        width: 50,
        alignment: Alignment.center,
        child: const BackArrowIconWidget(),
      ),
    );
  }
}
