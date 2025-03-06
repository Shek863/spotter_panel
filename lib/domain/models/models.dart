// Enum for log types
import 'package:flutter/cupertino.dart';

/// Model for a log entry
class SpotEntry {
  /// log content
  final String message;

  /// log level
  late String? level;

  /// log time
  late DateTime dateTime;

  /// log TAG
  late String? tag;

  /// Model constructor
  SpotEntry(this.message, {this.tag, this.level}) {
    level = level ?? "debug";
    dateTime = DateTime.now();
  }

  /// Model constructor
  SpotEntry.reload(this.message, {this.tag, this.level, String dateTime = ""}) {
    debugPrint("_exporter::spots::dateTime::$dateTime");
    var date = DateTime.parse(dateTime
            .replaceAll(" ", "T")
            .substring(0, 24)
            .replaceRange(23, 24, 'Z'))
        .toLocal();
    this.dateTime = date;
  }

  @override
  String toString() {
    return '-> spot ::: $level ::: $dateTime ::: '
        '${tag ?? StackTrace.current.toString().split("#")[4].toString().split(" ").last.replaceAll("\n", "").replaceAll("(", "").replaceAll(")", "")} \n'
        ' ::: $message';
  }


  /// Convert Model [SpotEntry] object to Map
  Map<String, dynamic> toJson() {
    return {
      'level': level,
      'message': message,
      'tag': tag,
      'dateTime': dateTime.toString()
    };
  }


  /// Convert Model [SpotEntry] object to Map
  static SpotEntry fromJson(Map<String, dynamic> data) {
    return SpotEntry.reload(
      data['message'],
      level: data['level'],
      tag: data['tag'],
    dateTime:  data['dateTime']);
  }
}
