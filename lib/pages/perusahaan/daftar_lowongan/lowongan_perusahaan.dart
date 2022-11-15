// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bkol_mobile/pages/perusahaan/daftar_lowongan/component/body.dart';
import 'package:bkol_mobile/pages/perusahaan/daftar_lowongan/component/tambah_lowongan.dart';
import 'package:flutter/material.dart';

class LowonganPerusahaan extends StatefulWidget {
  const LowonganPerusahaan({super.key});

  @override
  State<LowonganPerusahaan> createState() => _LowonganPerusahaanState();
}

class _LowonganPerusahaanState extends State<LowonganPerusahaan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daftar Lowongan Kerja',
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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => TambahLowongan(),
                ),
              );
            },
            icon: Icon(Icons.add_sharp),
            color: Colors.black,
          ),
        ],
      ),
      backgroundColor: Colors.indigo.shade50,
      body: BodyLowonganKerja(),
    );
  }
}
