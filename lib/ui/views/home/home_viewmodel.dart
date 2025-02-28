import 'package:spotter_panel/app/app.bottomsheets.dart';
import 'package:spotter_panel/app/app.dialogs.dart';
import 'package:spotter_panel/app/app.locator.dart';
import 'package:spotter_panel/app/app.router.dart';
import 'package:spotter_panel/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  // Place anything here that needs to happen before we get into the application
  Future find() async {
    _navigationService.replaceWithConsoleView();
  }
}
