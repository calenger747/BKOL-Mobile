// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bkol_mobile/pages/perusahaan/profil_perusahaan/component/editable/edit_profil.dart';
import 'package:bkol_mobile/pages/perusahaan/profil_perusahaan/component/profil_picture_perusahaan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BodyProfilPerusahaan extends StatefulWidget {
  const BodyProfilPerusahaan({super.key});

  @override
  State<BodyProfilPerusahaan> createState() => _BodyProfilPerusahaanState();
}

class _BodyProfilPerusahaanState extends State<BodyProfilPerusahaan> {
  final _formKey = GlobalKey<FormState>();

  void showAlertDialogCust() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Profil Pemberi Kerja'),
          content: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Positioned(
                  right: -40.0,
                  top: -40.0,
                  child: InkResponse(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: CircleAvatar(
                      child: Icon(Icons.close),
                      backgroundColor: Colors.red,
                    ),
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(height: 15),
                      TextFormField(
                        decoration: InputDecoration(
                          isDense: true, // important line
                          contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: "Nama Pemberi Kerja",
                          labelText: "Nama Pemberi Kerja",
                        ),
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        decoration: InputDecoration(
                          isDense: true, // important line
                          contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: "Jabatan",
                          labelText: "Jabatan",
                        ),
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        decoration: InputDecoration(
                          isDense: true, // important line
                          contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: "Telepon",
                          labelText: "Telepon",
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        decoration: InputDecoration(
                          isDense: true, // important line
                          contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: "Email",
                          labelText: "Email",
                        ),
                      ),
                      SizedBox(height: 15),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent.shade200,
                          minimumSize: const Size.fromHeight(40),
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                          textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Simpan',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var list1 = [
      {'label': "Bidang Perusahaan", "data": "MANUFACTURING"},
      {'label': "Email", "data": "afrillia@tokai.co.id"},
      {'label': "Telepon", "data": "(021) 29378096"},
      {
        'label': "Alamat",
        "data":
            "Jl. Raya Bogor KM. 29,6 Tugu, Cimanggis Depok 16951, Kel. Tugu, Kec. Cimanggis, Depok, Jawa barat, 16951"
      },
    ];

    var list2 = [
      {'label': "Nama Pemberi Kerja", "data": "Merlia sari"},
      {'label': "Jabatan", "data": "Staff Admin HRGA"},
      {'label': "Telepon", "data": "081318120433"},
      {'label': "Email", "data": "pga4@tokai.co.id"},
    ];

    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AutoSizeText(
                      "Profil Perusahaan",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        ProfilPerusahaanPic(),
                        SizedBox(height: 10),
                        AutoSizeText(
                          "PT ABCDEFG",
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Table(
                      border: TableBorder(
                        horizontalInside:
                            BorderSide(width: 0.6, color: Colors.black38),
                      ),
                      // ignore: prefer_const_literals_to_create_immutables
                      columnWidths: {
                        0: FractionColumnWidth(0.40),
                        1: FractionColumnWidth(0.60),
                      },
                      children: [
                        for (var item in list1)
                          TableRow(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Container(
                                  child: AutoSizeText(
                                    item['label'].toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Container(
                                  child: AutoSizeText(
                                    item['data'].toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                    ),
                                    maxLines: 6,
                                  ),
                                ),
                              )
                            ],
                          ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 35,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amber,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 0),
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        EditDataPerusahaan(),
                                  ),
                                );
                              },
                              child: AutoSizeText(
                                "Edit Profil",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                                maxLines: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AutoSizeText(
                      "Profil Pemberi Kerja",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Table(
                      border: TableBorder(
                        horizontalInside:
                            BorderSide(width: 0.6, color: Colors.black38),
                      ),
                      // ignore: prefer_const_literals_to_create_immutables
                      columnWidths: {
                        0: FractionColumnWidth(0.40),
                        1: FractionColumnWidth(0.60),
                      },
                      children: [
                        for (var item in list2)
                          TableRow(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Container(
                                  child: AutoSizeText(
                                    item['label'].toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Container(
                                  child: AutoSizeText(
                                    item['data'].toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                    ),
                                    maxLines: 6,
                                  ),
                                ),
                              )
                            ],
                          ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 35,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amber,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 0),
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {
                                showAlertDialogCust();
                              },
                              child: AutoSizeText(
                                "Edit Profil",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                                maxLines: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
