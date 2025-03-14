
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:spotter_panel/domain/models/models.dart';


/// A notification action which triggers a url launch event
const String urlLaunchActionId = 'id_8';

/// A notification action which triggers a App navigation event
const String navigationActionId = 'id_10';

/// Defines a iOS/MacOS notification category for text input actions.
const String darwinNotificationCategoryText = 'textCategory';

/// Defines a iOS/MacOS notification category for plain actions.
const String darwinNotificationCategoryPlain = 'plainCategory';


class FirebaseRepository {
  FirebaseRepository();

  /// initialise database instance from App environment
  /// (dev or prod)
  final _dbEnvInstance = FirebaseFirestore.instance.collection("spotter")
          .doc("data");

  ///
  Future listenSpots(
      String id, Function(List<SpotEntry>) listen) async {
    _dbEnvInstance.collection("devices").doc(id)
        .collection("spots").snapshots().listen((snapshot) {
      listen(snapshot.docs.map((e) => SpotEntry.fromJson(e.data()) ).toList());
    });
  }

  ///
  Future listenDevices( Function(List<Map<String, dynamic>>) listen) async {
    _dbEnvInstance.collection("devices").snapshots().listen((snapshot) {
      listen(snapshot.docs.map((e) => e.data() ).toList());
    });
  }

  ///
  Future findDevice(String id, Function(String) listen) async {
    await listenDevices( (devices) {
      final filter = devices.where((element) =>
      element['id'].toString().contains(id)
          || element['custom_id'].toString().contains(id)
      ).toList();
      if(filter.length == 1){
        listen(filter.first['custom_id']);
      }
    });
  }

  Future listenData( Function(Map<String, dynamic>?) listen ) async {
    _dbEnvInstance.snapshots().listen((snapshot) {
      listen(snapshot.data());
    });
  }

}
