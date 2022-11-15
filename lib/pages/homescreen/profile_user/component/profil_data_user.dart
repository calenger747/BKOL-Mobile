// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bkol_mobile/pages/homescreen/daftar_lamaran_user/component/body.dart';
import 'package:bkol_mobile/pages/homescreen/profile_user/component/berkas_penunjang/upload_berkas.dart';
import 'package:bkol_mobile/pages/homescreen/profile_user/component/detail_cv/edit_cv.dart';
import 'package:bkol_mobile/pages/homescreen/profile_user/component/edit_data/edit_data_pencaker.dart';
import 'package:bkol_mobile/pages/widgets/profil_pic.dart';
import 'package:flutter/material.dart';

class ProfileDataUser extends StatefulWidget {
  const ProfileDataUser({super.key});

  @override
  State<ProfileDataUser> createState() => _ProfileDataUserState();
}

class _ProfileDataUserState extends State<ProfileDataUser> {
  @override
  Widget build(BuildContext context) {
    var list = [
      {'label': "No Pendaftaran", "data": "000039"},
      {'label': "Nomor Induk Pencaker", "data": "1409180000550001"},
      {'label': "Nama Pencari Kerja", "data": "Dwi Kurniawan S"},
      {'label': "Jenis Kelamin", "data": "Pria"},
      {'label': "Tinggi Badan", "data": "178 cm"},
      {'label': "Minat Pekerja", "data": "Karyawan"},
      {'label': "Tempat/Tanggal Lahir", "data": "Bogor, 17/09/1995"},
      {'label': "Email", "data": "dwikurniawansutanto@gmail.com"},
      {'label': "Telepon", "data": "0895388623003"},
      {
        'label': "Alamat",
        "data":
            "Jatijajar, Jl Gotong Royong RT 07 RW 09 NO 15 Kecamatan Tapos Kota Depok"
      },
      {'label': "Kelurahan", "data": "JATIJAJAR"},
      {'label': "Kecamatan", "data": "TAPOS"},
      {'label': "Kode Pos", "data": "16455"},
      {'label': "Kewarganegaraan", "data": "WNI"},
      {'label': "Agama", "data": "Islam"},
      {'label': "Status Pernikahan", "data": "Belum Menikah"},
      {'label': "Type Pekerjaan", "data": "Karyawan"},
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil Pencari Kerja',
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
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.notifications_rounded),
        //     color: Colors.black,
        //   ),
        //   IconButton(
        //     onPressed: () {
        //       _scaffoldKey.currentState?.openDrawer();
        //     },
        //     icon: Icon(Icons.menu),
        //     color: Colors.black,
        //   ),
        // ],
      ),
      backgroundColor: Colors.indigo.shade50,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Center(
                  child: ProfilUserPic(
                    images: AssetImage("assets/images/8.jpg"),
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
                      for (var item in list)
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
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // SizedBox(
                        //   height: 35,
                        //   child: ElevatedButton(
                        //     style: ElevatedButton.styleFrom(
                        //       backgroundColor: Colors.amber,
                        //       padding: EdgeInsets.symmetric(
                        //           horizontal: 5, vertical: 0),
                        //       textStyle: TextStyle(
                        //         fontSize: 15,
                        //         fontWeight: FontWeight.bold,
                        //       ),
                        //     ),
                        //     onPressed: () {
                        //       Navigator.push(
                        //         context,
                        //         MaterialPageRoute(
                        //           builder: (BuildContext context) =>
                        //               UploadBerkas(),
                        //         ),
                        //       );
                        //     },
                        //     child: AutoSizeText(
                        //       "Dokumen Pencaker",
                        //       style: TextStyle(
                        //         color: Colors.black,
                        //         fontSize: 15,
                        //       ),
                        //       maxLines: 1,
                        //     ),
                        //   ),
                        // ),
                        SizedBox(width: 10),
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
                                      EditDataPencaker(),
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
                        SizedBox(width: 10),
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
                                      EditDataCV(),
                                ),
                              );
                            },
                            child: AutoSizeText(
                              "Detail CV",
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
      ),
    );
  }
}
