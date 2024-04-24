import 'package:flutter/material.dart';
import 'package:ns_theme/utils/theme/app_theme_data.dart';

import '../theme/app_color_scheme.dart';

enum ThemingWay {
  road1('1: ThemeData.light/dark'),
  road2('2: ThemeData(primarySwatch: swatch)'),
  road3('3: ThemeData(colorScheme: ColorScheme.fromSwatch))'),
  road4('4: ThemeData.from(colorScheme: ColorScheme.fromSwatch))'),
  road5('5: ThemeData(colorScheme: scheme)'),
  road6('6: ThemeData.from(colorScheme: scheme)'),
  road7('7: ThemeData(colorSchemeSeed: color)'),
  road8('8: ThemeData(colorScheme: ColorScheme.fromSeed(color))'),
  road9('9: ThemeData.from(colorScheme: ColorScheme.fromSeed(color))'),
  road10('10: ThemeData(colorScheme: and other props)');

  final String describe;
  const ThemingWay(this.describe);

  ThemeData theme(Brightness mode, bool useMaterial3) {
    switch (this) {
      case ThemingWay.road1:
        return themeOne(mode, useMaterial3);
      case ThemingWay.road2:
        return themeTwo(mode, useMaterial3);
      case ThemingWay.road3:
        return themeThree(mode, useMaterial3);
      case ThemingWay.road4:
        return themeFour(mode, useMaterial3);
      case ThemingWay.road5:
        return themeFive(mode, useMaterial3);
      case ThemingWay.road6:
        return themeSix(mode, useMaterial3);
      case ThemingWay.road7:
        return themeSeven(mode, useMaterial3);
      case ThemingWay.road8:
        return themeEight(mode, useMaterial3);
      case ThemingWay.road9:
        return themeNine(mode, useMaterial3);
      case ThemingWay.road10:
        return themeTen(mode, useMaterial3);
    }
  }
}

// 1) TD.light/dark
//    ThemeData(brightness: Brightness.light)
//    ThemeData(brightness: Brightness.dark)

ThemeData themeOne(Brightness mode, bool useMaterial3) => ThemeData(
      brightness: mode,
      useMaterial3: useMaterial3,
      visualDensity: VisualDensity.standard,
    );

// 2) TD primarySwatch
//    ThemeData(brightness: ..., primarySwatch: swatch)
ThemeData themeTwo(Brightness mode, bool useMaterial3) => ThemeData(
      brightness: mode,
      primarySwatch: mySwatch,
      useMaterial3: useMaterial3,
      visualDensity: VisualDensity.standard,
    );

// 3) TD scheme.fromSwatch
//    ThemeData(colorScheme: ColorScheme.fromSwatch(swatch))
ThemeData themeThree(Brightness mode, bool useMaterial3) => ThemeData(
      colorScheme: ColorScheme.fromSwatch(
        brightness: mode,
        primarySwatch: mySwatch,
      ),
      useMaterial3: useMaterial3,
      visualDensity: VisualDensity.standard,
    );

// 4) TD.from scheme.fromSwatch
//    ThemeData.from(colorScheme: ColorScheme.fromSwatch(swatch))
ThemeData themeFour(Brightness mode, bool useMaterial3) => ThemeData.from(
      colorScheme: ColorScheme.fromSwatch(
        brightness: mode,
        primarySwatch: mySwatch,
      ),
      useMaterial3: useMaterial3,
    ).copyWith(visualDensity: VisualDensity.standard);

// 5) TD colorScheme
//    ThemeData(colorScheme: ColorScheme(...))
ThemeData themeFive(Brightness mode, bool useMaterial3) => ThemeData(
      colorScheme: mode == Brightness.light ? mySchemeLight : mySchemeDark,
      useMaterial3: useMaterial3,
      visualDensity: VisualDensity.standard,
    );

// 6) TD.from colorScheme
//    ThemeData.from(colorScheme: ColorScheme(...))
ThemeData themeSix(Brightness mode, bool useMaterial3) => ThemeData.from(
      colorScheme: mode == Brightness.light ? mySchemeLight : mySchemeDark,
      useMaterial3: useMaterial3,
    ).copyWith(visualDensity: VisualDensity.standard);

// 7) TD colorSchemeSeed
//    ThemeData(colorSchemeSeed: Color(...))
ThemeData themeSeven(Brightness mode, bool useMaterial3) => ThemeData(
      brightness: mode,
      colorSchemeSeed: primaryColor,
      useMaterial3: useMaterial3,
      visualDensity: VisualDensity.standard,
    );

// 8) TD scheme.fromSeed
//    ThemeData(colorScheme: ColorScheme.fromSeed(seedColor))
ThemeData themeEight(Brightness mode, bool useMaterial3) => ThemeData(
      colorScheme: ColorScheme.fromSeed(
        brightness: mode,
        seedColor: primaryColor,
      ),
      useMaterial3: useMaterial3,
      visualDensity: VisualDensity.standard,
    );

// 9) TD.from scheme.fromSeed
//    ThemeData(colorScheme: ColorScheme.fromSeed(...))
ThemeData themeNine(Brightness mode, bool useMaterial3) => ThemeData.from(
      colorScheme: ColorScheme.fromSeed(
        brightness: mode,
        seedColor: primaryColor,
      ),
      useMaterial3: useMaterial3,
    ).copyWith(visualDensity: VisualDensity.standard);

// 10) Custom ThemeData()
ThemeData themeTen(Brightness mode, bool useMaterial3) =>
    mode == Brightness.light
        ? AppThemeData.lightThemeData
        : AppThemeData.darkThemeData;
