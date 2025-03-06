import 'package:spotter_panel/app/app.bottomsheets.dart';
import 'package:spotter_panel/app/app.dialogs.dart';
import 'package:spotter_panel/app/app.locator.dart';
import 'package:spotter_panel/app/app.router.dart';
import 'package:spotter_panel/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../domain/local/app_local_service.dart';

class HomeViewModel extends ReactiveViewModel {
  final _navigationService = locator<NavigationService>();
  final appLocalService = locator<AppLocalService>();

  // Place anything here that needs to happen before we get into the application
  Future find() async {
    _navigationService.replaceWithConsoleView();
  }

  HomeViewModel(){
    appLocalService.updateDashBoardData();
  }

  @override
  List<ListenableServiceMixin> get listenableServices => [appLocalService];

}
