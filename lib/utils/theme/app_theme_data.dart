import 'package:flutter/material.dart';
import 'package:ns_theme/utils/theme/app_text_theme.dart';

import 'app_color_scheme.dart';

class AppThemeData {
  static const bool useMaterial3 = true;

  static ThemeData lightThemeData = ThemeData(
      primaryColor: mySchemeLight.primary,
      primaryColorLight:
          Color.alphaBlend(Colors.white.withAlpha(0x66), mySchemeLight.primary),
      primaryColorDark:
          Color.alphaBlend(Colors.black.withAlpha(0x66), mySchemeLight.primary),
      secondaryHeaderColor:
          Color.alphaBlend(Colors.white.withAlpha(0xCC), mySchemeLight.primary),
      scaffoldBackgroundColor: mySchemeLight.background,
      canvasColor: mySchemeLight.background,
      cardColor: mySchemeLight.surface,
      dialogBackgroundColor: mySchemeLight.surface,
      indicatorColor:
          useMaterial3 ? mySchemeLight.onSurface : mySchemeLight.onPrimary,
      dividerColor: mySchemeLight.onSurface.withOpacity(0.12),
      applyElevationOverlayColor: false,
      useMaterial3: useMaterial3,
      visualDensity: VisualDensity.standard,
      tabBarTheme: TabBarTheme(
          labelColor:
              useMaterial3 ? mySchemeLight.onSurface : mySchemeLight.onPrimary),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return useMaterial3
                ? mySchemeLight.primary
                : mySchemeLight.secondary;
          }
          return null;
        }),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return useMaterial3
                ? mySchemeLight.primary
                : mySchemeLight.secondary;
          }
          return null;
        }),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return useMaterial3
                ? mySchemeLight.primary
                : mySchemeLight.secondary;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return useMaterial3
                ? mySchemeLight.primary
                : mySchemeLight.secondary;
          }
          return null;
        }),
      ),
      bottomAppBarTheme: BottomAppBarTheme(color: mySchemeLight.surface),
      colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.light,
        primarySwatch: blueColor,
        accentColor: greenColor,
      ),
      extensions: [AppTextTheme()]);

  static ThemeData darkThemeData = ThemeData(
      primaryColor: mySchemeDark.primary,
      primaryColorLight:
          Color.alphaBlend(Colors.white.withAlpha(0x59), mySchemeDark.primary),
      primaryColorDark:
          Color.alphaBlend(Colors.black.withAlpha(0x72), mySchemeDark.primary),
      secondaryHeaderColor:
          Color.alphaBlend(Colors.black.withAlpha(0x99), mySchemeDark.primary),
      scaffoldBackgroundColor: mySchemeDark.background,
      canvasColor: mySchemeDark.background,
      cardColor: mySchemeDark.surface,
      dialogBackgroundColor: mySchemeDark.surface,
      indicatorColor: mySchemeDark.onSurface,
      dividerColor: mySchemeDark.onSurface.withOpacity(0.12),
      applyElevationOverlayColor: true,
      useMaterial3: useMaterial3,
      visualDensity: VisualDensity.standard,
      tabBarTheme: TabBarTheme(labelColor: mySchemeDark.onSurface),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return useMaterial3 ? mySchemeDark.primary : mySchemeDark.secondary;
          }
          return null;
        }),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return useMaterial3 ? mySchemeDark.primary : mySchemeDark.secondary;
          }
          return null;
        }),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return useMaterial3 ? mySchemeDark.primary : mySchemeDark.secondary;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return useMaterial3 ? mySchemeDark.primary : mySchemeDark.secondary;
          }
          return null;
        }),
      ),
      bottomAppBarTheme: BottomAppBarTheme(color: mySchemeDark.surface),
      colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.dark,
        primarySwatch: blueColor,
        accentColor: greenColor,
      ),
      extensions: [AppTextTheme()]);
}
