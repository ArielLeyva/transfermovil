import 'dart:convert';

import 'package:flutter/services.dart';

class BankProvider {

  BankProvider(this.file);

  List<List<dynamic>> windows = [];

  String file = "assets/bm_windows.json";

  Future<List<List<dynamic>>> load() async {
    //Load windows from json assets
    final value = await rootBundle.load(file);
    String data = utf8.decode(value.buffer.asUint8List());
    //Decode json to Map
    Map json = jsonDecode(data);
    //Assign windows to "windows" variable
    List<dynamic> temp = json["windows"];
    for(var value in temp) {
      windows.add(value);
    }
    return windows;
  }
}

// final List<Future<List<List<dynamic>>>> providers = [
//   BankProvider("assets/bpa_windows.json").load(),
//   BankProvider("assets/bm_windows.json").load(),
//   BankProvider("assets/bandec_windows.json").load(),
// ];