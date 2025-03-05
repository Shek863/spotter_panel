import 'package:stacked/stacked.dart';

class AppLocalService with ListenableServiceMixin {
  //1
  AppLocalService() {
    //3
    listenToReactiveValues([_token,]);
  }

  //2
  final ReactiveValue<String> _token = ReactiveValue<String>("");
  String get token => _token.value;
  void updateToken(value) {
    _token.value = value;
    notifyListeners();
  }

}
