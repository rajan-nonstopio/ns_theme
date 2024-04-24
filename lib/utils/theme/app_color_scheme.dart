import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF386A20);

// Custom MaterialColor M1/M2 style Color Swatch based on primaryColor.
const MaterialColor mySwatch = MaterialColor(
  0xFF386A20,
  <int, Color>{
    50: Color(0xFFC3D2BB),
    100: Color(0xFFB4C7AA),
    200: Color(0xFF9AB48D),
    400: Color(0xFF598E3F),
    500: Color(0xFF386A20),
    600: Color(0xFF325F1D),
    700: Color(0xFF294D18),
    800: Color(0xFF213E12),
    900: Color(0xFF1A300E),
  },
);

// Light M3 ColorScheme.
const ColorScheme mySchemeLight = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xff386a20),
  onPrimary: Color(0xffffffff),
  primaryContainer: Color(0xffc0f0a4),
  onPrimaryContainer: Color(0xff042100),
  secondary: Color(0xff55624c),
  onSecondary: Color(0xffffffff),
  secondaryContainer: Color(0xffd9e7cb),
  onSecondaryContainer: Color(0xff131f0d),
  tertiary: Color(0xff386667),
  onTertiary: Color(0xffffffff),
  tertiaryContainer: Color(0xffbbebeb),
  onTertiaryContainer: Color(0xff002021),
  error: Color(0xffba1b1b),
  onError: Color(0xffffffff),
  errorContainer: Color(0xffffdad4),
  onErrorContainer: Color(0xff410001),
  outline: Color(0xff74796e),
  background: Color(0xfffdfdf6),
  onBackground: Color(0xff1a1c18),
  surface: Color(0xfffdfdf6),
  onSurface: Color(0xff1a1c18),
  surfaceVariant: Color(0xffdfe4d6),
  onSurfaceVariant: Color(0xff43493e),
  inverseSurface: Color(0xff2f312c),
  onInverseSurface: Color(0xfff1f1ea),
  inversePrimary: Color(0xff9cd67d),
  shadow: Color(0xff000000),
  surfaceTint: Color(0xff386a20),
);

// Dark M3 ColorScheme.
const ColorScheme mySchemeDark = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xff9cd67d),
  onPrimary: Color(0xff0c3900),
  primaryContainer: Color(0xff205107),
  onPrimaryContainer: Color(0xffc0f0a4),
  secondary: Color(0xffbdcbb0),
  onSecondary: Color(0xff273420),
  secondaryContainer: Color(0xff3e4a36),
  onSecondaryContainer: Color(0xffd9e7cb),
  tertiary: Color(0xffa0cfcf),
  onTertiary: Color(0xff003738),
  tertiaryContainer: Color(0xff1e4e4e),
  onTertiaryContainer: Color(0xffbbebeb),
  error: Color(0xffffb4a9),
  onError: Color(0xff680003),
  errorContainer: Color(0xff930006),
  onErrorContainer: Color(0xffffb4a9),
  outline: Color(0xff8d9286),
  background: Color(0xff1a1c18),
  onBackground: Color(0xffe3e3dc),
  surface: Color(0xff1a1c18),
  onSurface: Color(0xffe3e3dc),
  surfaceVariant: Color(0xff43493e),
  onSurfaceVariant: Color(0xffc4c8bb),
  inverseSurface: Color(0xffe3e3dc),
  onInverseSurface: Color(0xff2f312c),
  inversePrimary: Color(0xff386a20),
  shadow: Color(0xff000000),
  surfaceTint: Color(0xff9cd67d),
);

const MaterialColor blueColor = MaterialColor(
  0xFF1CD6CD,
  <int, Color>{
    1: Color(0xFFE5FCFA),
    10: Color(0xFFCAF8F6),
    50: Color(0xFFb0f5f1),
    100: Color(0xFF96f1ed),
    200: Color(0xFF7BEEE8),
    300: Color(0xFF61EAE4),
    400: Color(0xFF47E7DF),
    500: Color(0xFF2CE3DB),
    600: Color(0xFF0FC1B9),
    700: Color(0xFF15A19A),
    800: Color(0xFF118680),
    900: Color(0xFF0e6b66),
  },
);

const MaterialColor greenColor = MaterialColor(
  0xFF32CD32,
  <int, Color>{
    1: Color(0xFFEBFAEB),
    10: Color(0xFFD6F5D6),
    50: Color(0xFFC1F0C1),
    100: Color(0xFFADEBAD),
    200: Color(0xFF99E699),
    300: Color(0xFF84E184),
    400: Color(0xFF70DC70),
    500: Color(0xFF5BD75B),
    600: Color(0xFF47D247),
    700: Color(0xFF32CD32),
    800: Color(0xFF2CB32C),
    900: Color(0xFF18BA92),
  },
);

const MaterialColor yellowColor = MaterialColor(
  0xFF615e69,
  <int, Color>{
    1: Color(0xFFFFFCEE),
    10: Color(0xFFFFF8DD),
    50: Color(0xFFFFF8DD),
    100: Color(0xFFFFF5CC),
    200: Color(0xFFFFEFAA),
    300: Color(0xFFFFEB98),
    400: Color(0xFFFFE887),
    500: Color(0xFFFFE576),
    600: Color(0xFFFFE165),
    700: Color(0xFFFFDE54),
    800: Color(0xFFE6C84C),
    900: Color(0xFFCCB243),
  },
);

const AppMaterialColor greyColor = AppMaterialColor(
  0xFF386A20,
  <int, Color>{
    1: Color(0xFF151515),
    2: Color(0xFF171717),
    3: Color(0xFF404040),
    4: Color(0xFF555555),
    5: Color(0xFF6a6a6a),
    6: Color(0xFF808080),
    7: Color(0xFF959595),
    8: Color(0xFFaaaaaa),
    9: Color(0xFFbfbfbf),
    10: Color(0xFFd5d5d5),
    11: Color(0xFFeaeaea),
    12: Color(0xFFf9f9f9),
    13: Color(0xFFffffff),
  },
);

class AppMaterialColor extends MaterialColor {
  final Map<int, Color> _swatch;

  const AppMaterialColor(super.primary, super.swatch) : _swatch = swatch;

  Color get shade1 => _swatch[1]!;

  Color get shade2 => _swatch[2]!;

  Color get shade3 => _swatch[3]!;

  Color get shade4 => _swatch[4]!;

  Color get shade5 => _swatch[5]!;

  Color get shade6 => _swatch[6]!;

  Color get shade7 => _swatch[7]!;

  Color get shade8 => _swatch[8]!;

  Color get shade9 => _swatch[9]!;

  Color get shade10 => _swatch[10]!;

  Color get shade11 => _swatch[11]!;

  Color get shade12 => _swatch[12]!;
}
