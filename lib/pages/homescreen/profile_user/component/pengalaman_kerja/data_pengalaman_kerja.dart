import 'dart:convert';

import 'package:bkol_mobile/model/data_pengalaman_kerja.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class DataPengalamanUser extends ChangeNotifier {
  DataPengalamanKerja? data;

  Future getData(context) async {
    var response = await DefaultAssetBundle.of(context)
        .loadString("assets/raw/DataPengalamanKerja.json");

    var mJson = json.decode(response);
    data = DataPengalamanKerja.fromJson(mJson);

    this.notifyListeners();
  }
}
