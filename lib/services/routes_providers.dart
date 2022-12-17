import 'dart:convert';

import 'package:flutter/services.dart';

class RoutesProvider {
  List<dynamic> routes = [];

  RoutesProvider() {
    //load();
  }

  Future<List<dynamic>> load() async {
    //Load routes from json assets
    final value = await rootBundle.load("assets/routes.json");
    String data = utf8.decode(value.buffer.asUint8List());
    //Decode json to Map
    Map json = jsonDecode(data);
    //Assign routes to "routes" variable
    routes = json["routes"];
    return routes;
  }
}
