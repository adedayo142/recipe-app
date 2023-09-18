import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stackedapp/data_model/slider_data.dart';
import 'package:stackedapp/ui/common/ui_helpers.dart';
import 'package:stackedapp/ui/extension/app_typography.dart';
import 'package:stackedapp/ui/extension/palette.dart';

class SliderContent extends StatelessWidget {
  final SliderData sliderData;
  const SliderContent({super.key, required this.sliderData});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    AppTypography? typography = theme.extension<AppTypography>();
    Palette? palette = theme.extension<Palette>();
    return Column(
      children: [
        SvgPicture.asset(
          sliderData.image ?? '',
          height: 236.h,
          width: 246.w,
        ),
        SizedBox(
          height: 35.h,
        ),
        Text(
          sliderData.title ?? '--',
          textAlign: TextAlign.center,
          style: typography?.headlineBold24?.copyWith(color: palette?.gray11),
        ),
        SizedBox(
          height: 8.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: sidePadding),
          child: Text(sliderData.subtitle ?? '--',
              textAlign: TextAlign.center,
              style:
                  typography?.titleRegular16?.copyWith(color: palette?.gray7)),
        )
      ],
    );
  }
}
