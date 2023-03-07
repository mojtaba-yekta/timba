import 'package:flutter/material.dart';

import 'app_color.dart';

ThemeData appLightTheme(){
  return ThemeData(useMaterial3: true, colorScheme: lightColorScheme);
}

ThemeData appDarkTheme(){
  return ThemeData(useMaterial3: true, colorScheme: darkColorScheme);
}
