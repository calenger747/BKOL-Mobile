// ignore_for_file: prefer_const_constructors

import 'package:bkol_mobile/pages/homescreen/daftar_lamaran_user/component/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DaftarLamaranUser extends StatefulWidget {
  const DaftarLamaranUser({super.key});

  @override
  State<DaftarLamaranUser> createState() => _DaftarLamaranUserState();
}

class _DaftarLamaranUserState extends State<DaftarLamaranUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Riwayat Lamaran',
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
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(Icons.add_sharp),
          //   color: Colors.black,
          // ),
        ],
      ),
      backgroundColor: Colors.indigo.shade50,
      body: BodyDaftarLamaranUser(),
    );
  }
}
