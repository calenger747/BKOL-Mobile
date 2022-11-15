// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilPerusahaanPic extends StatelessWidget {
  const ProfilPerusahaanPic({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 250,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Image(
            image: AssetImage("assets/images/slider.jpg"),
          ),
          // Positioned(
          //   right: -16,
          //   bottom: 0,
          //   child: SizedBox(
          //     height: 46,
          //     width: 46,
          //     child: TextButton(
          //       style: TextButton.styleFrom(
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(50),
          //           side: BorderSide(color: Colors.white),
          //         ),
          //         foregroundColor: Colors.white,
          //         backgroundColor: Color(0xFFF5F6F9),
          //       ),
          //       onPressed: () {},
          //       child: SvgPicture.asset("assets/images/icon/Camera Icon.svg"),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
