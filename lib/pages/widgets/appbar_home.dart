// ignore_for_file: prefer_const_constructors, override_on_non_overriding_member, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarHome extends StatelessWidget with PreferredSizeWidget {
  final String title;

  const AppBarHome({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: RichText(
        textAlign: TextAlign.left,
        text: TextSpan(
          text: title,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          // ignore: prefer_const_literals_to_create_immutables
          children: <TextSpan>[
            TextSpan(
              text: '\nDINAS TENAGA KERJA DEPOK',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
      elevation: 10,
      backgroundColor: Colors.white,
      // leading: Container(
      //   padding: EdgeInsets.only(
      //     left: 20,
      //     top: 5,
      //     bottom: 5,
      //     right: 0,
      //   ),
      //   child: Image.asset('assets/images/icon.png'),
      // ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_rounded),
          color: Colors.black,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.black,
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}
