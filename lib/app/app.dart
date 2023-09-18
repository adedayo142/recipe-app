import 'package:stackedapp/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:stackedapp/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:stackedapp/ui/views/home/home_view.dart';
import 'package:stackedapp/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedapp/ui/views/counter/counter_view.dart';
import 'package:stackedapp/ui/views/login/login_view.dart';
import 'package:stackedapp/services/authentication_service.dart';
import 'package:stackedapp/ui/views/onboarding/onboarding_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    AdaptiveRoute(page: HomeView),
    AdaptiveRoute(page: StartupView, initial: true),
    AdaptiveRoute(page: CounterView),
    AdaptiveRoute(page: LoginView),
    AdaptiveRoute(page: OnboardingView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthenticationService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
