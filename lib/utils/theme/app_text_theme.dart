import 'package:flutter/material.dart';

class AppTextTheme extends ThemeExtension<AppTextTheme> {
  static const _defaultFontFamily = 'Roboto';

  static const FontWeight _bold = FontWeight.w700;
  static const FontWeight _black = FontWeight.w700;
  static const FontWeight _medium = FontWeight.w500;
  static const FontWeight _regular = FontWeight.w400;
  static const FontWeight _light = FontWeight.w300;
  static const FontWeight _extraLight = FontWeight.w200;

  static const TextStyle _title1 = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 60,
    fontWeight: _bold,
  );

  static const TextStyle _title2 = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 48,
    fontWeight: _bold,
  );

  static const TextStyle _title3 = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 36,
    fontWeight: _black,
  );

  static const TextStyle _headline = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 24,
    fontWeight: _black,
  );

  static const TextStyle _subHeadline = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 16,
    fontWeight: _bold,
  );

  static const TextStyle _bodyRegular = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 14,
    fontWeight: _regular,
  );

  static const TextStyle _bodySmall = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 14,
    fontWeight: _regular,
  );

  static const TextStyle _bodyBold = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 12,
    fontWeight: _bold,
  );

  static const TextStyle _bodySmallBold = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 12,
    fontWeight: _bold,
  );

  static const TextStyle _caption = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 10,
    fontWeight: _medium,
  );

  // Button Large
  static const TextStyle _buttonLarge = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 16,
    fontWeight: _medium,
  );

  // Button medium
  static const TextStyle _buttonMedium = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 14,
    fontWeight: _bold,
  );

  // Button small
  static const TextStyle _buttonSmall = TextStyle(
    fontFamily: _defaultFontFamily,
    fontSize: 12,
    fontWeight: _bold,
  );

  final TextStyle title1;

  final TextStyle title2;

  final TextStyle title3;

  final TextStyle headline;

  final TextStyle subHeadline;

  final TextStyle bodyRegular;

  final TextStyle bodySmall;

  final TextStyle bodyBold;

  final TextStyle bodySmallBold;

  final TextStyle caption;

  final TextStyle buttonLarge;

  final TextStyle buttonMedium;

  final TextStyle buttonSmall;

  AppTextTheme({
    this.title1 = _title1,
    this.title2 = _title2,
    this.title3 = _title3,
    this.headline = _headline,
    this.subHeadline = _subHeadline,
    this.bodyRegular = _bodyRegular,
    this.bodySmall = _bodySmall,
    this.bodyBold = _bodyBold,
    this.bodySmallBold = _bodySmallBold,
    this.caption = _caption,
    this.buttonLarge = _buttonLarge,
    this.buttonMedium = _buttonMedium,
    this.buttonSmall = _buttonSmall,
  }) : super();

  ThemeExtension<AppTextTheme> copyWith({
    TextStyle? title1,
    TextStyle? title2,
    TextStyle? title3,
    TextStyle? headline,
    TextStyle? subHeadline,
    TextStyle? bodyRegular,
    TextStyle? bodySmall,
    TextStyle? bodyBold,
    TextStyle? bodySmallBold,
    TextStyle? caption,
    TextStyle? buttonLarge,
    TextStyle? buttonMedium,
    TextStyle? buttonSmall,
  }) {
    return AppTextTheme(
      title1: title1 ?? this.title1,
      title2: title2 ?? this.title2,
      title3: title3 ?? this.title3,
      headline: headline ?? this.headline,
      subHeadline: subHeadline ?? this.subHeadline,
      bodyRegular: bodyRegular ?? this.bodyRegular,
      bodySmall: bodySmall ?? this.bodySmall,
      bodyBold: bodyBold ?? this.bodyBold,
      bodySmallBold: bodySmallBold ?? this.bodySmallBold,
      caption: caption ?? this.caption,
      buttonLarge: buttonLarge ?? this.buttonLarge,
      buttonMedium: buttonMedium ?? this.buttonMedium,
      buttonSmall: buttonSmall ?? this.buttonSmall,
    );
  }

  @override
  ThemeExtension<AppTextTheme> lerp(
      covariant ThemeExtension<AppTextTheme>? other, double t) {
    if (other == null) return this;
    if (other is AppTextTheme) {
      return AppTextTheme(
        title1: TextStyle.lerp(title1, other.title1, t)!,
        title2: TextStyle.lerp(title2, other.title2, t)!,
        title3: TextStyle.lerp(title3, other.title3, t)!,
        headline: TextStyle.lerp(headline, other.headline, t)!,
        subHeadline: TextStyle.lerp(subHeadline, other.subHeadline, t)!,
        bodyRegular: TextStyle.lerp(bodyRegular, other.bodyRegular, t)!,
        bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
        bodyBold: TextStyle.lerp(bodyBold, other.bodyBold, t)!,
        bodySmallBold: TextStyle.lerp(bodySmallBold, other.bodySmallBold, t)!,
        caption: TextStyle.lerp(caption, other.caption, t)!,
        buttonLarge: TextStyle.lerp(buttonLarge, other.buttonLarge, t)!,
        buttonMedium: TextStyle.lerp(buttonMedium, other.buttonMedium, t)!,
        buttonSmall: TextStyle.lerp(buttonSmall, other.buttonSmall, t)!,
      );
    }

    return this;
  }
}
