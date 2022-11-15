// ignore_for_file: unused_field

import 'dart:convert';

import 'package:bkol_mobile/model/data_bahasa.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class DataBahasaUser extends ChangeNotifier {
  MyData? data;

  Future getData(context) async {
    var response = await DefaultAssetBundle.of(context)
        .loadString("assets/raw/DataBahasa.json");

    var mJson = json.decode(response);
    data = MyData.fromJson(mJson);
    this.notifyListeners();
  }
}
