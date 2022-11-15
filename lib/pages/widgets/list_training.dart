// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unused_import, implementation_imports, unnecessary_import

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bkol_mobile/pages/homescreen/lowongan.dart';
import 'package:bkol_mobile/widgets/state_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListTraining extends StatefulWidget {
  const ListTraining({super.key});

  @override
  State<ListTraining> createState() => _ListTrainingState();
}

class _ListTrainingState extends State<ListTraining> {
  final List<Map<String, dynamic>> gridPelatihan = [
    {
      "title": "Ini Pelatihan 1",
      "kuota": "30",
      "standar": "SKKNI",
      "start": "1 Oktober 2022",
      "end": "30 November 2022",
      "status": "Available",
      "images": "assets/images/loker.jpg"
    },
    {
      "title": "Ini Pelatihan 2",
      "kuota": "23",
      "standar": "SKKNI",
      "start": "1 Oktober 2022",
      "end": "31 Desember 2022",
      "status": "Available",
      "images": "assets/images/slider.jpg"
    },
    {
      "title": "Ini Pelatihan 3",
      "kuota": "20",
      "standar": "SKKNI",
      "start": "1 Oktober 2022",
      "end": "31 Oktober 2022",
      "status": "Expired",
      "images": "assets/images/slider2.jpg"
    },
    {
      "title": "Ini Pelatihan 4",
      "kuota": "35",
      "standar": "SKKNI",
      "start": "1 Oktober 2022",
      "end": "20 Oktober 2022",
      "status": "Expired",
      "images": "assets/images/loker.jpg"
    },
    {
      "title": "Ini Pelatihan 5",
      "kuota": "40",
      "standar": "SKKNI",
      "start": "1 Oktober 2022",
      "end": "30 November 2022",
      "status": "Available",
      "images": "assets/images/slider.jpg"
    },
    {
      "title": "Ini Pelatihan 6",
      "kuota": "25",
      "standar": "SKKNI",
      "start": "1 Oktober 2022",
      "end": "20 November 2022",
      "status": "Available",
      "images": "assets/images/slider2.jpg"
    },
    {
      "title": "Ini Pelatihan 7",
      "kuota": "15",
      "standar": "SKKNI",
      "start": "1 Oktober 2022",
      "end": "31 Oktober 2022",
      "status": "Expired",
      "images": "assets/images/loker.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 478) / 2;
    final double itemWidth = size.width / 2;

    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 1.2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: gridPelatihan.length,
      itemBuilder: (_, index) {
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
                      "${gridPelatihan.elementAt(index)['images']}",
                      height: 170,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "${gridPelatihan.elementAt(index)['status']}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: (gridPelatihan.elementAt(index)['status']) ==
                                    'Expired'
                                ? Colors.white
                                : Colors.black,
                            background: Paint()
                              ..color =
                                  (gridPelatihan.elementAt(index)['status']) ==
                                          'Expired'
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
                    Text(
                      "${gridPelatihan.elementAt(index)['title']}",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Kuota Peserta: ${gridPelatihan.elementAt(index)['kuota']}",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Standar Kompetensi: ${gridPelatihan.elementAt(index)['standar']}",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Tanggal Mulai Pelatihan: ${gridPelatihan.elementAt(index)['start']}",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Tanggal Berakhir Pelatihan: ${gridPelatihan.elementAt(index)['end']}",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 13,
                      ),
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 0),
                              textStyle: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                              _bottomSheetRegistration(
                                  context,
                                  gridPelatihan.elementAt(index)['title'],
                                  gridPelatihan.elementAt(index)['images'],
                                  gridPelatihan.elementAt(index)['kuota'],
                                  gridPelatihan.elementAt(index)['standar'],
                                  gridPelatihan.elementAt(index)['start'],
                                  gridPelatihan.elementAt(index)['end'],
                                  gridPelatihan.elementAt(index)['status']);
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
      },
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
