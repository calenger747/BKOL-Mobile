// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bkol_mobile/pages/perusahaan/status_lowongan/body/detail_pencaker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BodyStatusLowongan extends StatefulWidget {
  const BodyStatusLowongan({super.key});

  @override
  State<BodyStatusLowongan> createState() => _BodyStatusLowonganState();
}

class _BodyStatusLowonganState extends State<BodyStatusLowongan> {
  final List<Map<String, dynamic>> listPerusahaan = [
    {
      "nama": "Utility Electric",
      "tgl_berlaku": "20/09/2021",
      "tgl_berakhir": "20/10/2021",
      "status": "Tidak Aktif",
      "loker_masuk": 8,
      "jml_pria": 3,
      "jml_wanita": 5,
    },
    {
      "nama": "STORE CREW BOY",
      "tgl_berlaku": "01/09/2022",
      "tgl_berakhir": "20/12/2022",
      "status": "Tidak Aktif",
      "loker_masuk": 8,
      "jml_pria": 3,
      "jml_wanita": 5,
    },
    {
      "nama": "Sales Smartfren",
      "tgl_berlaku": "20/09/2022",
      "tgl_berakhir": "20/10/2022",
      "status": "Tidak Aktif",
      "loker_masuk": 8,
      "jml_pria": 3,
      "jml_wanita": 5,
    },
    {
      "nama": "Host Live Streaming",
      "tgl_berlaku": "20/10/2022",
      "tgl_berakhir": "20/12/2022",
      "status": "Aktif",
      "loker_masuk": 8,
      "jml_pria": 3,
      "jml_wanita": 5,
    },
    {
      "nama": "Payroll STAF",
      "tgl_berlaku": "20/10/2022",
      "tgl_berakhir": "20/11/2022",
      "status": "Aktif",
      "loker_masuk": 8,
      "jml_pria": 3,
      "jml_wanita": 5,
    },
    {
      "nama": "Tenaga Elektro Medik",
      "tgl_berlaku": "01/30/2022",
      "tgl_berakhir": "30/10/2022",
      "status": "Tidak Aktif",
      "loker_masuk": 8,
      "jml_pria": 3,
      "jml_wanita": 5,
    },
    {
      "nama": "Analis Kesehatan Laboratorium",
      "tgl_berlaku": "20/11/2022",
      "tgl_berakhir": "20/12/2022",
      "status": "Aktif",
      "loker_masuk": 8,
      "jml_pria": 3,
      "jml_wanita": 5,
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double height = (size.height - kToolbarHeight - 100) / 2;
    final double width = size.width * 0.6;

    return ListView(
      // scrollDirection: Axis.vertical,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: listPerusahaan.length,
            itemBuilder: (_, index) {
              return GestureDetector(
                onTap: () {},
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  elevation: 5.0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AutoSizeText(
                                      "${listPerusahaan.elementAt(index)['nama']}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                      maxLines: 2,
                                    ),
                                    SizedBox(
                                      height: 25,
                                      width: 100,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors.blueAccent.shade400,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 0),
                                          textStyle: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  DetailPencaker(
                                                nama_loker: listPerusahaan
                                                    .elementAt(index)['nama']
                                                    .toString(),
                                                loker_masuk: listPerusahaan
                                                    .elementAt(
                                                        index)['loker_masuk']
                                                    .toString(),
                                                jml_pria: listPerusahaan
                                                    .elementAt(
                                                        index)['jml_pria']
                                                    .toString(),
                                                jml_wanita: listPerusahaan
                                                    .elementAt(
                                                        index)['jml_wanita']
                                                    .toString(),
                                              ),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          'Lihat Pencaker',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(),
                                SizedBox(
                                  height: 10,
                                ),
                                Table(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  columnWidths: {
                                    0: FractionColumnWidth(0.40),
                                    1: FractionColumnWidth(0.60),
                                  },
                                  children: [
                                    TableRow(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Container(
                                            child: AutoSizeText(
                                              "Tanggal Berlaku",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ),
                                              maxLines: 1,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Container(
                                            child: AutoSizeText(
                                              "${listPerusahaan.elementAt(index)['tgl_berlaku']}",
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
                                    TableRow(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Container(
                                            child: AutoSizeText(
                                              "Tanggal Berakhir",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ),
                                              maxLines: 1,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Container(
                                            child: AutoSizeText(
                                              "${listPerusahaan.elementAt(index)['tgl_berakhir']}",
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
                                    TableRow(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Container(
                                            child: AutoSizeText(
                                              "Loker Masuk",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ),
                                              maxLines: 1,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Container(
                                            child: AutoSizeText(
                                              "${listPerusahaan.elementAt(index)['loker_masuk']}",
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
                                    TableRow(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Container(
                                            child: AutoSizeText(
                                              "Status",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ),
                                              maxLines: 1,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Container(
                                            child: AutoSizeText(
                                              (listPerusahaan.elementAt(
                                                          index)['status'] ==
                                                      'Tidak Aktif')
                                                  ? 'Tidak Aktif'
                                                  : 'Aktif',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                                color:
                                                    (listPerusahaan.elementAt(
                                                                    index)[
                                                                'status'] ==
                                                            'Tidak Aktif')
                                                        ? Colors.white
                                                        : Colors.black,
                                                background: Paint()
                                                  ..color =
                                                      (listPerusahaan.elementAt(
                                                                      index)[
                                                                  'status'] ==
                                                              'Tidak Aktif')
                                                          ? Colors.red
                                                          : Colors.greenAccent
                                                              .shade400
                                                  ..strokeWidth = 17
                                                  ..style =
                                                      PaintingStyle.stroke,
                                              ),
                                              maxLines: 1,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
