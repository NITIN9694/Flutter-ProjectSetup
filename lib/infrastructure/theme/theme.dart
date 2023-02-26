import 'package:flutter/material.dart';

import 'app_bar.theme.dart';
import 'button.theme.dart';
import 'colors.theme.dart';

ThemeData themeData = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: ColorsTheme.colA8B6B9,
    primary: ColorsTheme.colPrimary,
    secondary: ColorsTheme.colSecondary,
    brightness: Brightness.dark,
    background: ColorsTheme.colBackground,
  ),
  backgroundColor:  ColorsTheme.colBackground,
  primaryColor:ColorsTheme.colPrimary,
  hintColor: ColorsTheme.colA8B6B9,
  appBarTheme: appBarTheme,
  elevatedButtonTheme: buttonTheme,
  useMaterial3: true,
  fontFamily: "Satoshi",
  scaffoldBackgroundColor: Colors.white,
);
