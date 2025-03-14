import 'package:spotter_panel/app/app.router.dart';
import 'package:spotter_panel/domain/repos/firebase_repository.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';

class AppLocalService with ListenableServiceMixin {
  final _navigationService = locator<NavigationService>();

  //1
  AppLocalService() {
    //3
    listenToReactiveValues([_dashBoardData,]);
  }

  //2
  final ReactiveValue<Map<String, dynamic>> _dashBoardData =
  ReactiveValue<Map<String, dynamic>>(
      {
        'app_name': "",
        'app_package_id': "",
        'total_devices':"0,000",
        'total_active_devices':"0,00",
        'spots_size':"000",
        'total_error':"00",
        'session_duration_moy':"_:_",
        'app_health':"0",
      });
  Map<String, dynamic> get dashBoardData => _dashBoardData.value;
  void updateDashBoardData() {
    FirebaseRepository().listenDevices((p0){
      _dashBoardData.value['total_devices'] = p0.length.toString();
      notifyListeners();
    });

    FirebaseRepository().listenData((p0){
      _dashBoardData.value['app_name'] = p0?['app_name'];
      _dashBoardData.value['app_package_id'] = p0?['app_package_id'];
      notifyListeners();
    });
  }


  //3
  final ReactiveValue<String> _selectedDevice = ReactiveValue<String>("");
  String get selectedDevice => _selectedDevice.value;
  void find(id) {
    FirebaseRepository().findDevice(id,(p0){
      _selectedDevice.value = p0;
      notifyListeners();
      _navigationService.replaceWithConsoleView();
    });
  }

}
