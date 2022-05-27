import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color _textPrimaryColor = Color.fromARGB(255, 1, 17, 38);
  static const Color _textVariantColor = Color.fromARGB(144, 1, 17, 38);
  static const Color _inputPrimaryColor = Color.fromARGB(255, 1, 28, 64);
  static const Color _warningColor = Color.fromARGB(255, 250, 172, 4);
  static const Color _errorColor = Color.fromARGB(255, 255, 33, 21);
  static const Color _highlightColor = Color.fromARGB(255, 160, 217, 190);
  static const Color _bottomBarColor = Color.fromARGB(255, 20, 76, 89);
  static const Color _backgroundColor = Color.fromARGB(255, 230, 241, 236);
  static const Color _scaffoldBackgroundColor =
      Color.fromARGB(255, 52, 115, 108);

  static final ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: _scaffoldBackgroundColor,
    backgroundColor: _backgroundColor,
    canvasColor: _inputPrimaryColor,
    highlightColor: _highlightColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: _bottomBarColor,
    ),
    appBarTheme: const AppBarTheme(
      titleTextStyle: _lightScreenHeading1TextStyle,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(
        color: _inputPrimaryColor,
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: _textPrimaryColor,
      primaryVariant: _textVariantColor,
      onPrimary: _backgroundColor,
      secondary: _inputPrimaryColor,
      secondaryVariant: _warningColor,
    ),
    iconTheme: const IconThemeData(
      color: _inputPrimaryColor,
    ),
    dividerTheme: const DividerThemeData(
      color: _textVariantColor,
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(_textPrimaryColor),
    ),
    cardTheme: CardTheme(
      color: _scaffoldBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
    textTheme: _lightTextTheme,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: _textPrimaryColor,
    ),
  );

  static const TextTheme _lightTextTheme = TextTheme(
    headline1: _lightScreenHeading1TextStyle,
    headline2: _lightScreenHeading2TextStyle,
    headline3: _lightScreenHeading3TextStyle,
    headline4: _lightScreenHeading4TextStyle,
    headline5: _lightScreenHeading5TextStyle,
    headline6: _lightScreenHeading6TextStyle,
    bodyText1: _lightScreenBodyText1Style,
    bodyText2: _lightScreenBodyText2Style,
    subtitle1: _lightScreenSubtitle1Style,
    subtitle2: _lightScreenSubtitle2Style,
    button: _lightScreenButtonTextStyle,
  );

  static const TextStyle _lightScreenHeading1TextStyle = TextStyle(
    fontSize: 30,
    fontFamily: "Rubik",
    fontWeight: FontWeight.w500,
    color: _textPrimaryColor,
  );

  static const TextStyle _lightScreenHeading2TextStyle = TextStyle(
    fontSize: 24,
    fontFamily: "Rubik",
    fontWeight: FontWeight.w400,
    color: _textPrimaryColor,
  );

  static const TextStyle _lightScreenHeading3TextStyle = TextStyle(
    fontSize: 18,
    fontFamily: "Rubik",
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    color: _textPrimaryColor,
  );

  static const TextStyle _lightScreenHeading4TextStyle = TextStyle(
    fontSize: 18,
    fontFamily: "Rubik",
    fontWeight: FontWeight.w300,
    letterSpacing: 0.5,
    color: _textVariantColor,
  );

  static const TextStyle _lightScreenHeading5TextStyle = TextStyle(
    fontSize: 12,
    fontFamily: "Rubik",
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    color: _errorColor,
  );

  static const TextStyle _lightScreenHeading6TextStyle = TextStyle(
    fontSize: 12,
    fontFamily: "Rubik",
    fontWeight: FontWeight.w300,
    letterSpacing: 0.5,
    color: _textPrimaryColor,
  );

  // Button text style
  static const TextStyle _lightScreenButtonTextStyle = TextStyle(
    fontSize: 24,
    fontFamily: "Rubik",
    fontWeight: FontWeight.w400,
    color: _inputPrimaryColor,
  );

  // Input field text style
  static const TextStyle _lightScreenBodyText1Style = TextStyle(
    fontSize: 18,
    fontFamily: "Rubik",
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    color: _inputPrimaryColor,
  );

  // Container, Card text style
  static const TextStyle _lightScreenBodyText2Style = TextStyle(
    fontSize: 14,
    letterSpacing: 0.5,
    fontFamily: "Rubik",
    fontWeight: FontWeight.w400,
    color: _backgroundColor,
  );

  // Drawer text style
  static const TextStyle _lightScreenSubtitle1Style = TextStyle(
    fontSize: 15,
    fontFamily: "Rubik",
    fontWeight: FontWeight.w400,
    color: _highlightColor,
  );

  // Chip text style
  static const TextStyle _lightScreenSubtitle2Style = TextStyle(
    fontSize: 12.0,
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w500,
    color: _highlightColor,
  );
}
