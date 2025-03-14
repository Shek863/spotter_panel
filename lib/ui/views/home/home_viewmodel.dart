import 'package:flutter/cupertino.dart';
import 'package:spotter_panel/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import '../../../domain/local/app_local_service.dart';

class HomeViewModel extends ReactiveViewModel {
  final appLocalService = locator<AppLocalService>();
  final findController = TextEditingController();

  HomeViewModel(){
    appLocalService.updateDashBoardData();
  }

  @override
  List<ListenableServiceMixin> get listenableServices => [appLocalService];


}
