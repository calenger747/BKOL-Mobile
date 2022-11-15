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

class ListLowonganHome extends StatefulWidget {
  const ListLowonganHome({super.key});

  @override
  State<ListLowonganHome> createState() => _ListLowonganHomeState();
}

class _ListLowonganHomeState extends State<ListLowonganHome> {
  final List<Map<String, dynamic>> gridLowongan = [
    {
      "title": "Ini Lowongan Kerja 1",
      "perusahaan": "PT ABC LIMA DASAR",
      "lokasi": "Jl. Mawar No. 1",
      "images": "assets/images/loker.jpg"
    },
    {
      "title": "Ini Lowongan Kerja 2",
      "perusahaan": "PT ABC LIMA DASAR",
      "lokasi": "Jl. Mawar No. 2",
      "images": "assets/images/slider.jpg"
    },
    {
      "title": "Ini Lowongan Kerja 3",
      "perusahaan": "PT ABC LIMA DASAR",
      "lokasi": "Jl. Mawar No. 3",
      "images": "assets/images/slider2.jpg"
    },
    {
      "title": "Ini Lowongan Kerja 4",
      "perusahaan": "PT ABC LIMA DASAR",
      "lokasi": "Jl. Mawar No. 4",
      "images": "assets/images/loker.jpg"
    },
    {
      "title": "Ini Lowongan Kerja 5",
      "perusahaan": "PT ABC LIMA DASAR",
      "lokasi": "Jl. Mawar No. 5",
      "images": "assets/images/slider.jpg"
    },
    {
      "title": "Ini Lowongan Kerja 6",
      "perusahaan": "PT ABC LIMA DASAR",
      "lokasi": "Jl. Mawar No. 6",
      "images": "assets/images/slider2.jpg"
    },
    {
      "title": "Ini Lowongan Kerja 7",
      "perusahaan": "PT ABC LIMA DASAR",
      "lokasi": "Jl. Mawar No. 7",
      "images": "assets/images/loker.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 100) / 2;
    final double itemWidth = size.width / 2;

    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (itemWidth / itemHeight),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: gridLowongan.length,
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
                child: Image.asset(
                  "${gridLowongan.elementAt(index)['images']}",
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "${gridLowongan.elementAt(index)['title']}",
                      style: Theme.of(context).textTheme.titleSmall!.merge(
                            TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                      maxLines: 2,
                      minFontSize: 12,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    AutoSizeText(
                      "${gridLowongan.elementAt(index)['perusahaan']}",
                      style: Theme.of(context).textTheme.labelSmall!.merge(
                            TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade500,
                            ),
                          ),
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    AutoSizeText(
                      "${gridLowongan.elementAt(index)['lokasi']}",
                      style: Theme.of(context).textTheme.labelSmall!.merge(
                            TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade500,
                            ),
                          ),
                      maxLines: 2,
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
                                gridLowongan.elementAt(index)['title'],
                                gridLowongan.elementAt(index)['images'],
                                gridLowongan.elementAt(index)['perusahaan'],
                                gridLowongan.elementAt(index)['lokasi'],
                              );
                            },
                            child: AutoSizeText(
                              "Read More",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                              maxLines: 1,
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

  _bottomSheetRegistration(
      context, String title, String images, String perusahaan, String alamat) {
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
                                "Posisi Jabatan",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                                maxLines: 1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              child: AutoSizeText(
                                "Staff",
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
                                "Nama Perusahaan",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                                maxLines: 1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              child: AutoSizeText(
                                perusahaan,
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
                                "Alamat Perusahaan",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                                maxLines: 1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              child: AutoSizeText(
                                alamat,
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
                                "Pendidikan Minimal",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                                maxLines: 1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              child: AutoSizeText(
                                "SMK / MAK / ALL",
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
                                "Jml Pria Dibutuhkan",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                                maxLines: 1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              child: AutoSizeText(
                                "10 Orang",
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
                                "Jml Wanita Dibutuhkan",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                                maxLines: 1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              child: AutoSizeText(
                                "0 Orang",
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
                                "Batas Umur",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                                maxLines: 1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              child: AutoSizeText(
                                "24 Tahun",
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
                                "Tahapan Seleksi",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                                maxLines: 1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              child: AutoSizeText(
                                "12/04/2022 - 31/12/2022",
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
                                "Pengumuman Penerimaan",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                                maxLines: 1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              child: AutoSizeText(
                                "12/04/2022 - 31/12/2022",
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
                                "Lokasi Penempatan",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                                maxLines: 1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              child: AutoSizeText(
                                "CABANG BOGOR2",
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
                Divider(
                  height: 2,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
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
                              backgroundColor: Colors.greenAccent,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 0),
                              textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {},
                            child: AutoSizeText(
                              "Kirim Lamaran",
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
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
