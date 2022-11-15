// ignore_for_file: prefer_const_constructors, unnecessary_new, non_constant_identifier_names

import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bkol_mobile/pages/perusahaan/profil_perusahaan/component/profil_picture_perusahaan.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RegisterPerusahaan extends StatefulWidget {
  const RegisterPerusahaan({super.key});

  @override
  State<RegisterPerusahaan> createState() => _RegisterPerusahaanState();
}

class _RegisterPerusahaanState extends State<RegisterPerusahaan> {
  final bidang = [
    'Manufacturing',
    'Kesehatan',
    'Otomotif',
    'Ekspedisi',
    'Asuransi',
    'Konsultan IT',
    'Perbankan',
    'Properti'
  ];
  final kecamatan = [
    'Pancoran Mas',
    'Cimanggis',
    'Sawangan',
    'Limo',
    'Sukmajaya',
    'Beji',
    'Cipayung',
    'Cilodong',
    'Cinere',
    'Tapos',
    'Bojongari',
    'Luar Kota'
  ];
  final kelurahan = [
    'Cilangkap',
    'Cimpaeun',
    'Jatijajar',
    'Leuwinanggung',
    'Sukamaju Baru',
    'Sukatani',
    'Tapos',
    'Luar Kota'
  ];
  String? value1, value2, value3;

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Registrasi Perusahaan',
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
      ),
      backgroundColor: Colors.indigo.shade50,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Data Pengguna",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        Divider(
                          height: 4,
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Username",
                            labelText: "Username",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Password",
                            labelText: "Password",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Confirm Password",
                            labelText: "Confirm Password",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Data Perusahaan",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        Divider(
                          height: 4,
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Nama Perusahaan",
                            labelText: "Nama Perusahaan",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                isDense: true, // important line
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 25, 10, 0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                hintText: "Bidang Perusahaan",
                                labelText: "Bidang Perusahaan",
                              ),
                              value: value1,
                              isExpanded: true,
                              items: bidang.map(bidangList).toList(),
                              onChanged: (value) =>
                                  setState(() => this.value1 = value),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Email",
                            labelText: "Email",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Telepon",
                            labelText: "Telepon",
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          maxLines: 4,
                          decoration: InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Alamat",
                            labelText: "Alamat",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Provinsi",
                            labelText: "Provinsi",
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Kota",
                            labelText: "Kota",
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                isDense: true, // important line
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 25, 10, 0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                hintText: "Kecamatan",
                                labelText: "Kecamatan",
                              ),
                              value: value2,
                              isExpanded: true,
                              items: kecamatan.map(kecamatanList).toList(),
                              onChanged: (value) =>
                                  setState(() => this.value2 = value),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                isDense: true, // important line
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 25, 10, 0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                hintText: "Kelurahan",
                                labelText: "Kelurahan",
                              ),
                              value: value3,
                              isExpanded: true,
                              items: kelurahan.map(kelurahanList).toList(),
                              onChanged: (value) =>
                                  setState(() => this.value3 = value),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Kode Pos",
                            labelText: "Kode Pos",
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Data Pemberi Kerja (PIC)",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        Divider(
                          height: 4,
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Nama Pemberi Kerja",
                            labelText: "Nama Pemberi Kerja",
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Jabatan",
                            labelText: "Jabatan",
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Telepon",
                            labelText: "Telepon",
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Email",
                            labelText: "Email",
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent.shade200,
                            minimumSize: const Size.fromHeight(40),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 0),
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Simpan',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> bidangList(String item) => DropdownMenuItem(
        child: Text(
          item,
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        value: item,
      );
  DropdownMenuItem<String> kecamatanList(String item) => DropdownMenuItem(
        child: Text(
          item,
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        value: item,
      );
  DropdownMenuItem<String> kelurahanList(String item) => DropdownMenuItem(
        child: Text(
          item,
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        value: item,
      );
}
