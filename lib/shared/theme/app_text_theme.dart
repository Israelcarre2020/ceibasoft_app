import 'package:flutter/material.dart';

import 'app_colors_theme.dart';

class AppTextTheme {
  static const textThemeLight = TextTheme(
    headline3: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 28,
        fontFamily: 'CIBFontSans',
        color: AppColorsTheme.headline,
        letterSpacing: 0.6),
    headline4: TextStyle(
        fontSize: 24,
        fontFamily: 'CIBFontSans',
        fontWeight: FontWeight.w700,
        color: AppColorsTheme.headline,
        letterSpacing: 0.45),
    headline5: TextStyle(
        fontSize: 20,
        fontFamily: 'CIBFontSans',
        fontWeight: FontWeight.w700,
        color: AppColorsTheme.headline,
        letterSpacing: 0),
    headline6: TextStyle(
        fontSize: 18,
        fontFamily: 'CIBFontSans',
        fontWeight: FontWeight.w700,
        color: AppColorsTheme.headline,
        letterSpacing: 0.15),
    subtitle1: TextStyle(
        fontSize: 18,
        fontFamily: 'CIBFontSans',
        fontWeight: FontWeight.w700,
        color: AppColorsTheme.subtitle,
        letterSpacing: 0.3),
    bodyText1: TextStyle(
        fontSize: 16,
        fontFamily: 'OpenSans',
        fontWeight: FontWeight.w400,
        color: AppColorsTheme.bodytext,
        letterSpacing: 0.3),
    bodyText2: TextStyle(
        fontSize: 14,
        fontFamily: 'OpenSans',
        fontWeight: FontWeight.w400,
        color: AppColorsTheme.bodytext,
        letterSpacing: 0.2),
    button: TextStyle(
        fontSize: 20,
        fontFamily: 'CIBFontSans',
        fontWeight: FontWeight.w700,
        color: AppColorsTheme.primary,
        letterSpacing: 0.38),
    caption: TextStyle(
        fontSize: 16,
        fontFamily: 'OpenSans',
        fontWeight: FontWeight.w600,
        color: AppColorsTheme.bodytext,
        letterSpacing: 0.3),
    overline: TextStyle(
        fontSize: 12,
        fontFamily: 'OpenSans',
        fontWeight: FontWeight.w400,
        color: AppColorsTheme.bodytext,
        letterSpacing: 0.17),
    headline1: TextStyle(
        fontSize: 28,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w900,
        color: AppColorsTheme.headline,
        letterSpacing: -1.5),
    headline2: TextStyle(
        fontSize: 60,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w300,
        color: AppColorsTheme.headline,
        letterSpacing: -0.5),
    subtitle2: TextStyle(
        fontSize: 14,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w600,
        color: AppColorsTheme.subtitle,
        letterSpacing: 0.1),
  );
}
