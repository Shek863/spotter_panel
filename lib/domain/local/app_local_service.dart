import 'package:spotter_panel/domain/repos/firebase_repository.dart';
import 'package:stacked/stacked.dart';

class AppLocalService with ListenableServiceMixin {
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
        'app_description': "",
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
      _dashBoardData.value['app_description'] = p0?['app_description'];
      notifyListeners();
    });
  }

}
