// ignore_for_file: unnecessary_import, implementation_imports, prefer_const_constructors

import 'package:bkol_mobile/pages/homescreen/lowongan.dart';
import 'package:bkol_mobile/pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SliderBanner extends StatelessWidget {
  final String image, title;

  const SliderBanner({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          image.toString(),
          fit: BoxFit.cover,
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color(0xFF0D1839).withOpacity(0.60)),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 12,
                ),
                // Builder(
                //   builder: (context) => ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       backgroundColor: Colors.amber,
                //       padding:
                //           EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                //       textStyle: TextStyle(
                //         fontSize: 20,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //     onPressed: () {},
                //     child: const Text(
                //       'Read More',
                //       style: TextStyle(color: Colors.black),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

List<Widget> slider = [
  SliderBanner(
    image: 'assets/images/slider.jpg',
    title:
        'Selamat Datang di \n Bursa Kerja Online Dinas Ketenagakerjaan Kota Depok',
  ),
  SliderBanner(
    image: 'assets/images/slider2.jpg',
    title: 'Ini Slider 2',
  ),
];
