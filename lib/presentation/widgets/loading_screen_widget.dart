import 'package:flutter/material.dart';

class LoadingScreenWidget extends StatelessWidget {
  const LoadingScreenWidget({
    Key? key,
    required this.actualScreen,
  }) : super(key: key);

  final Widget actualScreen;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        actualScreen,
        SizedBox.expand(
          child: TweenAnimationBuilder<double>(
            curve: Curves.ease,
            duration: const Duration(seconds: 1),
            tween: Tween<double>(begin: 0.0, end: 0.75),
            builder: (_, opacity, __) {
              return Opacity(
                opacity: opacity,
                child: SizedBox.expand(
                  child: Container(color: Colors.white),
                ),
              );
            },
          ),
        ),
        const Center(
          child: CircularProgressIndicator(),
        ),
      ],
    );
  }
}
