import 'package:flutter/material.dart';
import 'package:stackedapp/ui/common/app_colors.dart';
import 'package:stackedapp/ui/common/app_text_styles.dart';
import 'package:stackedapp/ui/extension/app_typography.dart';
import 'package:stackedapp/ui/extension/palette.dart';

class AppThemes {
  // Light Theme
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.primary6,
      brightness: Brightness.light,
      extensions: <ThemeExtension<dynamic>>[
        AppTypography(
          headlineBold24: AppTextStyles.headlineBold24,
          titleRegular16: AppTextStyles.titleRegular16,
          titleBold16: AppTextStyles.titleBold16,
          labelRegular12: AppTextStyles.labelRegular12,
        ),
        const Palette(
            gray1: AppColors.gray1,
            gray6: AppColors.gray6,
            gray7: AppColors.gray7,
            gray9: AppColors.gray9,
            gray11: AppColors.gray11,
            primary6: AppColors.primary6)
      ],
    );
  }
}
