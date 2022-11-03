// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListInformation extends StatefulWidget {
  const ListInformation({super.key});

  @override
  State<ListInformation> createState() => _ListInformationState();
}

class _ListInformationState extends State<ListInformation> {
  final List<Map<String, dynamic>> listInformasi = [
    {
      "title": "Ini Informasi 1",
      "tanggal": "29 Oktober 2022",
      "images": "assets/images/loker.jpg"
    },
    {
      "title": "Ini Informasi 2",
      "tanggal": "29 Oktober 2022",
      "images": "assets/images/slider.jpg"
    },
    {
      "title": "Ini Informasi 3",
      "tanggal": "29 Oktober 2022",
      "images": "assets/images/slider2.jpg"
    },
    {
      "title": "Ini Informasi 4",
      "tanggal": "29 Oktober 2022",
      "images": "assets/images/loker.jpg"
    },
    {
      "title": "Ini Informasi 5",
      "tanggal": "29 Oktober 2022",
      "images": "assets/images/slider.jpg"
    },
    {
      "title": "Ini Informasi 6",
      "tanggal": "29 Oktober 2022",
      "images": "assets/images/slider2.jpg"
    },
    {
      "title": "Ini Informasi 7",
      "tanggal": "29 Oktober 2022",
      "images": "assets/images/loker.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double height = (size.height - kToolbarHeight - 100) / 2;
    final double width = size.width * 0.6;

    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: listInformasi.length,
      itemBuilder: (_, index) {
        return GestureDetector(
          onTap: () {},
          child: Card(
            child: Row(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  child: Image.asset(
                    "${listInformasi.elementAt(index)['images']}",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "${listInformasi.elementAt(index)['title']}",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: width,
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(Icons.calendar_month_sharp),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "${listInformasi.elementAt(index)['tanggal']}",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
