// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bkol_mobile/pages/perusahaan/profil_perusahaan/component/body.dart';
import 'package:flutter/material.dart';

class ProfileDataPerusahaan extends StatefulWidget {
  const ProfileDataPerusahaan({super.key});

  @override
  State<ProfileDataPerusahaan> createState() => _ProfileDataPerusahaanState();
}

class _ProfileDataPerusahaanState extends State<ProfileDataPerusahaan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil Perusahaan',
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
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.notifications_rounded),
        //     color: Colors.black,
        //   ),
        //   IconButton(
        //     onPressed: () {
        //       _scaffoldKey.currentState?.openDrawer();
        //     },
        //     icon: Icon(Icons.menu),
        //     color: Colors.black,
        //   ),
        // ],
      ),
      backgroundColor: Colors.indigo.shade50,
      body: SingleChildScrollView(
        child: BodyProfilPerusahaan(),
      ),
    );
  }
}
