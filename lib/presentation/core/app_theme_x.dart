import 'package:flutter/material.dart';

extension AppThemeX on BuildContext {
  Color get textColor => Theme.of(this).colorScheme.primary;
  Color get textHintColor => Theme.of(this).colorScheme.primaryVariant;
  Color get inputColor => Theme.of(this).colorScheme.secondary;
  Color get warningColor => Theme.of(this).colorScheme.secondaryVariant;
  Color get scaffoldColor => Theme.of(this).scaffoldBackgroundColor;
  Color get backgroundColor => Theme.of(this).backgroundColor;
  Color get highlightColor => Theme.of(this).highlightColor;
  Color get headerColor =>
      Theme.of(this).bottomNavigationBarTheme.backgroundColor!;
}
