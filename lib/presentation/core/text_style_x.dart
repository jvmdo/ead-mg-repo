import 'package:flutter/material.dart';

extension TextStyleX on BuildContext {
  TextStyle get headline1 => Theme.of(this).textTheme.headline1!;
  TextStyle get headline2 => Theme.of(this).textTheme.headline2!;
  TextStyle get headline3 => Theme.of(this).textTheme.headline3!;
  TextStyle get buttonStyle => Theme.of(this).textTheme.button!;
  TextStyle get inputStyle => Theme.of(this).textTheme.bodyText1!;
  TextStyle get hintStyle => Theme.of(this).textTheme.headline4!;
  TextStyle get drawerStyle => Theme.of(this).textTheme.subtitle1!;
  TextStyle get chipStyle => Theme.of(this).textTheme.subtitle2!;
  TextStyle get errorStyle => Theme.of(this).textTheme.headline5!;
  TextStyle get headline6 => Theme.of(this).textTheme.headline6!;
  TextStyle get queryStyle => inputStyle.copyWith(
        fontWeight: FontWeight.w400,
        color: Theme.of(this).highlightColor,
      );

  // TextStyle get headline5 => Theme.of(this).textTheme.headline5!;
  // TextStyle get cardTextStyle => Theme.of(this).textTheme.bodyText2!;
}
