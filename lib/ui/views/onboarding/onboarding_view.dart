import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedapp/generated/l10n.dart';
import 'package:stackedapp/ui/common/app_images.dart';
import 'package:stackedapp/ui/common/ui_helpers.dart';
import 'package:stackedapp/ui/views/onboarding/widgets/dot_widget.dart';
import 'package:stackedapp/ui/views/onboarding/widgets/slider_content.dart';
import 'package:stackedapp/ui/widgets/common/primary_button/primary_button.dart';

import 'onboarding_viewmodel.dart';

class OnboardingView extends StackedView<OnboardingViewModel> {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OnboardingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Image.asset(
                AppImages.logo,
                height: 72.h,
              ),
              SizedBox(
                height: 32.h,
              ),
              SizedBox(
                height: 400.h,
                child: PageView.builder(
                  onPageChanged: viewModel.setIndex,
                  itemCount: viewModel.sliderItems.length,
                  itemBuilder: (context, index) {
                    final sliderData = viewModel.sliderItems[index];
                    return SliderContent(sliderData: sliderData);
                  },
                ),
              ),
              Spacer(),
              DotWidget(
                  index: viewModel.currentIndex,
                  length: viewModel.sliderItems.length),
              SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: sidePadding),
                child: PrimaryButton(
                  buttonText: S.current.get_started,
                  onTap: viewModel.getStarted,
                ),
              )
            ],
          ),
        ));
  }

  @override
  OnboardingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OnboardingViewModel();
}
