// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bkol_mobile/pages/perusahaan/status_lowongan/body/list_pencaker/cv_pencaker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListPencakerWaiting extends StatefulWidget {
  const ListPencakerWaiting({super.key});

  @override
  State<ListPencakerWaiting> createState() => _ListPencakerWaitingState();
}

class _ListPencakerWaitingState extends State<ListPencakerWaiting> {
  final List<Map<String, dynamic>> listPencaker = [
    {
      "nomor_induk": "123456789",
      "nama": "Rivany Rahman",
      "pendidikan": "SMK / MAK",
      "umur": "21",
      "gender": "Wanita",
      "status": "Diproses",
      "images": "assets/images/8.jpg"
    },
    {
      "nomor_induk": "234567890",
      "nama": "Syalsandiar Ramdhan",
      "pendidikan": "SMK / MAK",
      "umur": "20",
      "gender": "Pria",
      "status": "Tidak Memenuhi Syarat",
      "images": "assets/images/8.jpg"
    },
    {
      "nomor_induk": "345678901",
      "nama": "Rizky Ramadhan",
      "pendidikan": "SMK / MAK",
      "umur": "22",
      "gender": "Pria",
      "status": "Diterima",
      "images": "assets/images/8.jpg"
    },
    {
      "nomor_induk": "4567890123",
      "nama": "Tria Amanda",
      "pendidikan": "SMK / MAK",
      "umur": "22",
      "gender": "Wanita",
      "status": "Ditolak",
      "images": "assets/images/8.jpg"
    },
    {
      "nomor_induk": "5678901234",
      "nama": "Silvia Maulida	",
      "pendidikan": "SMK / MAK",
      "umur": "23",
      "gender": "Wanita",
      "status": "Diterima",
      "images": "assets/images/8.jpg"
    },
    {
      "nomor_induk": "6789012345",
      "nama": "Gilang Pradana",
      "pendidikan": "SMK / MAK",
      "umur": "19",
      "gender": "Pria",
      "status": "Tidak Memenuhi Syarat",
      "images": "assets/images/8.jpg"
    },
    {
      "nomor_induk": "7890123456",
      "nama": "Salma Amalia",
      "pendidikan": "SMK / MAK",
      "umur": "22",
      "gender": "Wanita",
      "status": "Ditolak",
      "images": "assets/images/8.jpg"
    },
    {
      "nomor_induk": "8901234567",
      "nama": "Lioni Virdha Raynell",
      "pendidikan": "D3",
      "umur": "27",
      "gender": "Wanita",
      "status": "Belum Diproses",
      "images": "assets/images/8.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double height = (size.height - kToolbarHeight - 100) / 2;
    final double width = size.width * 0.6;
    late Color warna;

    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      // scrollDirection: Axis.vertical,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: listPencaker.length,
          itemBuilder: (_, index) {
            if (listPencaker.elementAt(index)['status'] == 'Diproses') {
              warna = Color(0xff3c8dbc);
            } else if (listPencaker.elementAt(index)['status'] == 'Diterima') {
              warna = Color(0xff00a65a);
            } else if (listPencaker.elementAt(index)['status'] == 'Ditolak') {
              warna = Color(0xffdd4b39);
            } else if (listPencaker.elementAt(index)['status'] ==
                'Tidak Memenuhi Syarat') {
              warna = Color(0xfff39c12);
            } else {
              warna = Color(0xffb5bcc7);
            }
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
                                    "${listPencaker.elementAt(index)['nama']}",
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
                                                CVPencaker(
                                              nomor_induk:
                                                  '${listPencaker.elementAt(index)['nomor_induk']}',
                                              nama:
                                                  '${listPencaker.elementAt(index)['nama']}',
                                              pendidikan:
                                                  '${listPencaker.elementAt(index)['pendidikan']}',
                                              gender:
                                                  '${listPencaker.elementAt(index)['gender']}',
                                              status:
                                                  '${listPencaker.elementAt(index)['status']}',
                                              usia:
                                                  '${listPencaker.elementAt(index)['usia']}',
                                              images:
                                                  '${listPencaker.elementAt(index)['images']}',
                                            ),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        'Lihat CV',
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
                                            "Nomor Induk Pencaker",
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
                                            "${listPencaker.elementAt(index)['nomor_induk']}",
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
                                            "Pendidikan Terakhir",
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
                                            "${listPencaker.elementAt(index)['pendidikan']}",
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
                                            "Usia",
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
                                            "${listPencaker.elementAt(index)['umur']}",
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
                                            "Jenis Kelamin",
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
                                            "${listPencaker.elementAt(index)['gender']}",
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
                                            "${listPencaker.elementAt(index)['status']}",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.white,
                                              background: Paint()
                                                ..color = warna
                                                ..strokeWidth = 17
                                                ..style = PaintingStyle.stroke,
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
      ],
    );
  }
}
