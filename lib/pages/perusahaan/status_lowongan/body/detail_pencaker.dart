// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bkol_mobile/pages/homescreen/home_page.dart';
import 'package:bkol_mobile/pages/homescreen/information_page.dart';
import 'package:bkol_mobile/pages/perusahaan/daftar_lowongan/component/body.dart';
import 'package:bkol_mobile/pages/perusahaan/daftar_lowongan/lowongan_perusahaan.dart';
import 'package:bkol_mobile/pages/perusahaan/status_lowongan/body/list_pencaker/list_pencaker_non_eligible.dart';
import 'package:bkol_mobile/pages/perusahaan/status_lowongan/body/list_pencaker/list_pencaker_proses.dart';
import 'package:bkol_mobile/pages/perusahaan/status_lowongan/body/list_pencaker/list_pencaker_terima.dart';
import 'package:bkol_mobile/pages/perusahaan/status_lowongan/body/list_pencaker/list_pencaker_tolak.dart';
import 'package:bkol_mobile/pages/perusahaan/status_lowongan/body/list_pencaker/pencaker_list_waiting.dart';
import 'package:bkol_mobile/widgets/state_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailPencaker extends StatefulWidget {
  final String nama_loker, loker_masuk, jml_pria, jml_wanita;
  const DetailPencaker(
      {super.key,
      required this.nama_loker,
      required this.loker_masuk,
      required this.jml_pria,
      required this.jml_wanita});

  @override
  State<DetailPencaker> createState() => _DetailPencakerState();
}

class _DetailPencakerState extends State<DetailPencaker> {
  List<String> itemtabs = [
    "Semua Pencari Kerja",
    "Diproses",
    "Diterima",
    "Ditolak",
    "Tidak Memenuhi Syarat"
  ];

  int current = 0;
  final screens = [
    ListPencakerWaiting(),
    ListPencakerProses(),
    ListPencakerTerima(),
    ListPencakerTolak(),
    ListPencakerNonEligible(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daftar Pencari Kerja',
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
      ),
      backgroundColor: Colors.indigo.shade50,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 17),
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Detail Lowongan",
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
                                    "Nama Pekerjaan",
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
                                    widget.nama_loker,
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
                                    "Total Pencaker",
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
                                    widget.loker_masuk,
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
                                    "Total Pencaker Pria",
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
                                    widget.jml_pria,
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
                                    "Total Pencaker Wanita",
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
                                    widget.jml_wanita,
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
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: itemtabs.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            margin: EdgeInsets.all(5),
                            width: 120,
                            height: 45,
                            decoration: BoxDecoration(
                              color: current == index
                                  ? Colors.white70
                                  : Colors.white54,
                              borderRadius: current == index
                                  ? BorderRadius.circular(15)
                                  : BorderRadius.circular(10),
                              border: current == index
                                  ? Border.all(
                                      color: Colors.blueAccent, width: 2)
                                  : null,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Center(
                                child: Text(
                                  itemtabs[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: current == index
                                        ? Colors.black
                                        : Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    child: screens[current],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
