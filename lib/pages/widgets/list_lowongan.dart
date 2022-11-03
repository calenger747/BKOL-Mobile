// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unused_import, implementation_imports, unnecessary_import

import 'package:bkol_mobile/pages/homescreen/lowongan.dart';
import 'package:bkol_mobile/pages/widgets/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
                    Text(
                      "${gridLowongan.elementAt(index)['title']}",
                      style: Theme.of(context).textTheme.titleMedium!.merge(
                            TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "${gridLowongan.elementAt(index)['perusahaan']}",
                      style: Theme.of(context).textTheme.labelSmall!.merge(
                            TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade500,
                            ),
                          ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "${gridLowongan.elementAt(index)['lokasi']}",
                      style: Theme.of(context).textTheme.labelSmall!.merge(
                            TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade500,
                            ),
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
                            onPressed: () {},
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
                            onPressed: () {},
                            child: Icon(
                              Icons.share_sharp,
                              color: Colors.black,
                              size: 12,
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
}
