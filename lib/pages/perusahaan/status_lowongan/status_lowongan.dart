// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bkol_mobile/pages/perusahaan/daftar_lowongan/component/tambah_lowongan.dart';
import 'package:bkol_mobile/pages/perusahaan/status_lowongan/body/body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StatusLowongan extends StatefulWidget {
  const StatusLowongan({super.key});

  @override
  State<StatusLowongan> createState() => _StatusLowonganState();
}

class _StatusLowonganState extends State<StatusLowongan> {
  var list2 = [
    {'label': "Nama Pemberi Kerja", "data": "Merlia sari"},
    {'label': "Jabatan", "data": "Staff Admin HRGA"},
    {'label': "Telepon", "data": "081318120433"},
    {'label': "Email", "data": "pga4@tokai.co.id"},
  ];

  final _formKey = GlobalKey<FormState>();

  void showAlertDialogCustSearch() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Periode'),
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
                          'Cari',
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daftar Status Lowongan Kerja',
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _bottomSheetStatistic(
                  context, 'Statistik Pencaker', '109', '100', '209');
            },
            icon: Icon(Icons.bar_chart_sharp),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {
              showAlertDialogCustSearch();
            },
            icon: Icon(Icons.search_sharp),
            color: Colors.black,
          ),
        ],
      ),
      backgroundColor: Colors.indigo.shade50,
      body: BodyStatusLowongan(),
    );
  }

  _bottomSheetStatistic(
      context, String title, String pria, String wanita, String total) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Wrap(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade400,
                    ),
                  ),
                ),
                Divider(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Table(
                    // ignore: prefer_const_literals_to_create_immutables
                    columnWidths: {
                      0: FractionColumnWidth(0.40),
                      1: FractionColumnWidth(0.60),
                    },
                    children: [
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              child: AutoSizeText(
                                "Total Pencari Kerja",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                                maxLines: 2,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              child: AutoSizeText(
                                total,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                ),
                                maxLines: 6,
                              ),
                            ),
                          )
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              child: AutoSizeText(
                                "Laki-Laki",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                                maxLines: 2,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              child: AutoSizeText(
                                pria,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                ),
                                maxLines: 6,
                              ),
                            ),
                          )
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              child: AutoSizeText(
                                "Perempuan",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                                maxLines: 2,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              child: AutoSizeText(
                                wanita,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
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
              ],
            ),
          ],
        );
      },
    );
  }
}
