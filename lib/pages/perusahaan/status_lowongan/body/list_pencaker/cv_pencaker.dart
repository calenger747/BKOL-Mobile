// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bkol_mobile/pages/widgets/profil_pic.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CVPencaker extends StatefulWidget {
  final String nomor_induk;
  final String nama;
  final String pendidikan;
  final String usia;
  final String gender;
  final String status;
  final String images;

  const CVPencaker(
      {super.key,
      required this.nomor_induk,
      required this.nama,
      required this.pendidikan,
      required this.usia,
      required this.gender,
      required this.status,
      required this.images});

  @override
  State<CVPencaker> createState() => _CVPencakerState();
}

class _CVPencakerState extends State<CVPencaker> {
  @override
  Widget build(BuildContext context) {
    var list = [
      {'label': "Nomor Induk Pencaker", "data": widget.nomor_induk},
      {'label': "Nama Pencari Kerja", "data": widget.nama},
      {'label': "Tempat/Tanggal Lahir", "data": "Bogor, 17/09/1995"},
      {'label': "Jenis Kelamin", "data": widget.gender},
      {'label': "Email", "data": "dwikurniawansutanto@gmail.com"},
      {'label': "Telepon", "data": "0895388623003"},
      {
        'label': "Alamat",
        "data":
            "Jatijajar, Jl Gotong Royong RT 07 RW 09 NO 15 Kecamatan Tapos Kota Depok"
      },
      {'label': "Kecamatan", "data": "TAPOS"},
      {'label': "Kelurahan", "data": "JATIJAJAR"},
      {'label': "Kode Pos", "data": "16455"},
      {'label': "Kewarganegaraan", "data": "WNI"},
      {'label': "Agama", "data": "Islam"},
      {'label': "Status Pernikahan", "data": "Belum Menikah"},
    ];
    var list2 = [
      {'label': "Pendidikan Terakhir", "data": widget.pendidikan},
      {'label': "Jurusan", "data": "TEKNIK PERTAMBANGAN DAN MINYAK"},
      {'label': "Keterampilan", "data": "Mengoperasikan Komputer"},
      {'label': "NEM/IPK", "data": "IPK"},
      {'label': "Nilai", "data": "2.99"},
      {'label': "Tahun Lulus", "data": "2021"},
      {'label': "Tinggi Badan", "data": "180 cm"},
      {'label': "Berat Badan", "data": "JATIJAJAR"},
      {'label': "Penguasaan Bahasa", "data": "Indonesia, Inggris, Mandarin"},
    ];
    var list3 = [
      {'pengalaman': "Staff Administrasi, PT LAURENDO JAYA SENTOSA, 2 Tahun"},
      {'pengalaman': "Staff Administrasi, PT ABCD, 1 Tahun"},
    ];
    var list4 = [
      {'label': "Posisi Jabatan", "data": "Staff"},
      {'label': "Lokasi", "data": "TEKNIK PERTAMBANGAN DAN MINYAK"},
      {'label': "Besaran Upah Yang Diinginkan", "data": "4.000.000"},
    ];
    late Color warna;

    if (widget.status == 'Diproses') {
      warna = Color(0xff3c8dbc);
    } else if (widget.status == 'Diterima') {
      warna = Color(0xff00a65a);
    } else if (widget.status == 'Ditolak') {
      warna = Color(0xffdd4b39);
    } else if (widget.status == 'Tidak Memenuhi Syarat') {
      warna = Color(0xfff39c12);
    } else {
      warna = Color(0xffb5bcc7);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Data Pencari Kerja',
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
                Stack(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ProfilUserPic(
                          images: AssetImage(widget.images),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          widget.status,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            background: Paint()
                              ..color = warna
                              ..strokeWidth = 17
                              ..style = PaintingStyle.stroke,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
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
                Divider(),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Center(
                    child: AutoSizeText(
                      "DATA PENDIDIKAN FORMAL",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      maxLines: 1,
                    ),
                  ),
                ),
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
                Divider(),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Center(
                    child: AutoSizeText(
                      "PENGALAMAN KERJA",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      maxLines: 1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Table(
                    border: TableBorder(
                      horizontalInside:
                          BorderSide(width: 0.6, color: Colors.black38),
                    ),
                    // ignore: prefer_const_literals_to_create_immutables
                    columnWidths: {
                      0: FractionColumnWidth(1),
                    },
                    children: [
                      for (var item in list3)
                        TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Container(
                                child: AutoSizeText(
                                  item['pengalaman'].toString(),
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
                Divider(),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Center(
                    child: AutoSizeText(
                      "JABATAN YANG DIINGINKAN",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      maxLines: 1,
                    ),
                  ),
                ),
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
                      for (var item in list4)
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
                if (widget.status == 'Belum Diproses')
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(width: 10),
                          SizedBox(
                            height: 35,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amber.shade900,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 0),
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {},
                              child: AutoSizeText(
                                "Tidak Sesuai",
                                style: TextStyle(
                                  color: Colors.white,
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
                                backgroundColor: Colors.blueAccent.shade400,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 0),
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {},
                              child: AutoSizeText(
                                "Proses",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                                maxLines: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                else if (widget.status == 'Diproses')
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(width: 10),
                          SizedBox(
                            height: 35,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.redAccent.shade700,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 0),
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {},
                              child: AutoSizeText(
                                "Tolak",
                                style: TextStyle(
                                  color: Colors.white,
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
                                backgroundColor: Colors.greenAccent.shade700,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 0),
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {},
                              child: AutoSizeText(
                                "Terima",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                                maxLines: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                else
                  Container(),
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
