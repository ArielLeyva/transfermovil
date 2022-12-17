import 'dart:convert';

import 'package:flutter/services.dart';

class ServicesProvider {

  ServicesProvider();

  List<List<dynamic>> actions = [];

  String file = "assets/services_actions.json";

  Future<List<List<dynamic>>> load() async {
    //Load windows from json assets
    final value = await rootBundle.load(file);
    String data = utf8.decode(value.buffer.asUint8List());
    //Decode json to Map
    Map json = jsonDecode(data);
    //Assign actions to "actions" variable
    List<dynamic> temp = json["actions"];
    for(var value in temp) {
      actions.add(value);
    }
    return actions;
  }
}
