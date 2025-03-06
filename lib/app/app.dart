import 'package:spotter_panel/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:spotter_panel/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:spotter_panel/ui/views/console/console_view.dart';
import 'package:spotter_panel/ui/views/home/home_view.dart';
import 'package:spotter_panel/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../domain/local/app_local_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: ConsoleView),
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AppLocalService),
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
