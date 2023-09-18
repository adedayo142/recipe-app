import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedapp/ui/extension/app_typography.dart';
import 'package:stackedapp/ui/extension/palette.dart';

import 'primary_button_model.dart';

class PrimaryButton extends StackedView<PrimaryButtonModel> {
  const PrimaryButton({this.onTap, required this.buttonText, super.key});
  final VoidCallback? onTap;
  final String buttonText;
  @override
  Widget builder(
    BuildContext context,
    PrimaryButtonModel viewModel,
    Widget? child,
  ) {
    ThemeData theme = Theme.of(context);
    AppTypography? typography = theme.extension<AppTypography>();
    Palette? pallete = theme.extension<Palette>();
    return Container(
      height: 56.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        color: pallete?.primary6,
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(4.r),
        child: InkWell(
          borderRadius: BorderRadius.circular(4.r),
          onTap: onTap,
          child: SizedBox(
            height: 56.h,
            width: double.infinity,
            child: Center(
              child: Text(
                buttonText,
                style: typography?.titleBold16?.copyWith(color: pallete?.gray1),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  PrimaryButtonModel viewModelBuilder(
    BuildContext context,
  ) =>
      PrimaryButtonModel();
}
