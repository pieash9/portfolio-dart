import 'package:flutter/material.dart';
import 'package:portfolio/style/app_colors.dart';

class AppTheme {
  ThemeData get dark {
    return _getThemeData(
      colorScheme: ColorScheme.dark(
        primary: AppColors.primaryColor,
        background: AppColors.darkBackgroundColor,
        surface: AppColors.gray[850]!,
        outline: AppColors.gray[800],
        outlineVariant: AppColors.gray[700],
        onBackground: AppColors.gray[100],
        onSurface: AppColors.gray[100]!,
        onSurfaceVariant: AppColors.gray[400],
        tertiary: AppColors.gray[900],
      ),
      scaffoldBackgroundColor: AppColors.darkBackgroundColor,
      elevatedButtonTextStyle: _darkElevatedButtonTextStyle,
      outlineButtonTextStyle: _darkOutlineButtonTextStyle,
      useMaterial3: true,
      appBarTheme: AppBarTheme(color: AppColors.gray[900]!.withOpacity(0.3)),
    );
  }
}
