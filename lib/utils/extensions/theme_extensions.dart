import 'package:flutter/material.dart';

import '../theme/app_text_theme.dart';

extension ThemeDataExtension on ThemeData {
  AppTextTheme get appTextTheme => extension<AppTextTheme>() ?? AppTextTheme();
}
