import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedapp/app/app.locator.dart';
import 'package:stackedapp/app/app.router.dart';
import 'package:stackedapp/data_model/slider_data.dart';
import 'package:stackedapp/generated/l10n.dart';
import 'package:stackedapp/ui/common/app_images.dart';

class OnboardingViewModel extends IndexTrackingViewModel {
  final _navigationService = locator<NavigationService>();

  List<SliderData> sliderItems = [
    SliderData(
        image: AppImages.onboardOne,
        title: S.current.onboarding_title_one,
        subtitle: S.current.onboarding_subtitle_one),
    SliderData(
        image: AppImages.onboardTwo,
        title: S.current.onboarding_title_two,
        subtitle: S.current.onboarding_subtitle_two),
    SliderData(
        image: AppImages.onboardThree,
        title: S.current.onboarding_title_three,
        subtitle: S.current.onboarding_subtitle_three)
  ];

  void getStarted() {
    _navigationService.navigateToLoginView();
  }
}
