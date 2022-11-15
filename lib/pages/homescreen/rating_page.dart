// ignore_for_file: unnecessary_import, implementation_imports, prefer_const_constructors, unused_element

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bkol_mobile/pages/homescreen/lowongan.dart';
import 'package:bkol_mobile/pages/login_page.dart';
import 'package:bkol_mobile/widgets/state_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RatingPage extends StatelessWidget {
  final String title, kuota, standar, start, end, status, images;

  const RatingPage(
      {super.key,
      required this.title,
      required this.kuota,
      required this.standar,
      required this.start,
      required this.end,
      required this.status,
      required this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Stack(
              children: [
                Image.asset(
                  images,
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      status,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color:
                            (status) == 'Expired' ? Colors.white : Colors.black,
                        background: Paint()
                          ..color = (status) == 'Expired'
                              ? Colors.red
                              : Colors.greenAccent.shade400
                          ..strokeWidth = 17
                          ..style = PaintingStyle.stroke,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                  minFontSize: 15,
                  maxLines: 2,
                ),
                SizedBox(
                  height: 8,
                ),
                AutoSizeText(
                  "Kuota Peserta: $kuota",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 13,
                  ),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 5,
                ),
                AutoSizeText(
                  "Standar Kompetensi: $standar",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 13,
                  ),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 5,
                ),
                AutoSizeText(
                  "Tanggal Mulai Pelatihan: $start",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 13,
                  ),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 5,
                ),
                AutoSizeText(
                  "Tanggal Berakhir Pelatihan: $end",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 13,
                  ),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 25,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                          textStyle: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          _bottomSheetRegistration(context, title, images,
                              kuota, standar, start, end, status);
                        },
                        child: Text(
                          "Read More",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      height: 25,
                      width: 25,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.greenAccent.shade200,
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 0),
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
                                  StatePage(page: 'chat2'),
                            ),
                          );
                        },
                        child: SvgPicture.asset(
                          "assets/images/icon/whatsapp-svgrepo-com.svg",
                          color: Colors.black,
                          width: 12,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _bottomSheetRegistration(context, String title, String images, String kuota,
      String kompetensi, String mulai, String selesai, String status) {
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
                SizedBox(
                  height: 200,
                  width: 250,
                  child: Stack(
                    fit: StackFit.expand,
                    clipBehavior: Clip.none,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Image(
                        image: AssetImage(images),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
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
                                "Kuota Peserta",
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
                                kuota,
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
                                "Standar Kompetensi",
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
                                kompetensi,
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
                                "Tanggal Mulai Pelatihan",
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
                                mulai,
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
                                "Tanggal Berakhir Pelatihan",
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
                                selesai,
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
                                "Status",
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
                              child: Text(
                                status,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: (status) == 'Expired'
                                      ? Colors.white
                                      : Colors.black,
                                  background: Paint()
                                    ..color = (status) == 'Expired'
                                        ? Colors.red
                                        : Colors.greenAccent.shade400
                                    ..strokeWidth = 17
                                    ..style = PaintingStyle.stroke,
                                ),
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

List<Widget> ratingSlider = [
  RatingPage(
      title: "Ini Pelatihan 1",
      kuota: "30",
      standar: "SKKNI",
      start: "1 Oktober 2022",
      end: "30 November 2022",
      status: "Available",
      images: "assets/images/loker.jpg"),
  RatingPage(
      title: "Ini Pelatihan 2",
      kuota: "23",
      standar: "SKKNI",
      start: "1 Oktober 2022",
      end: "31 Desember 2022",
      status: "Available",
      images: "assets/images/slider.jpg"),
  RatingPage(
      title: "Ini Pelatihan 3",
      kuota: "20",
      standar: "SKKNI",
      start: "1 Oktober 2022",
      end: "31 Oktober 2022",
      status: "Expired",
      images: "assets/images/slider2.jpg"),
  RatingPage(
      title: "Ini Pelatihan 4",
      kuota: "35",
      standar: "SKKNI",
      start: "1 Oktober 2022",
      end: "20 Oktober 2022",
      status: "Expired",
      images: "assets/images/loker.jpg"),
];
