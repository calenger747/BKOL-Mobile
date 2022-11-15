// ignore_for_file: prefer_const_constructors, unnecessary_new, non_constant_identifier_names

import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bkol_mobile/pages/perusahaan/profil_perusahaan/component/profil_picture_perusahaan.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EditDataPerusahaan extends StatefulWidget {
  const EditDataPerusahaan({super.key});

  @override
  State<EditDataPerusahaan> createState() => _EditDataPerusahaanState();
}

class _EditDataPerusahaanState extends State<EditDataPerusahaan> {
  FilePickerResult? _resultLogo;
  PlatformFile? _pickedLogo;
  File? _displayLogo;
  String? _fileLogo;

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

  TextEditingController logoPerusahaan = TextEditingController();

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  Future startPickerLogo() async {
    _resultLogo = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'png', 'gif'],
    );

    if (_resultLogo != null) {
      _fileLogo = _resultLogo!.files.first.name;
      _pickedLogo = _resultLogo!.files.first;
      _displayLogo = File(_pickedLogo.toString());

      setState(() {
        logoPerusahaan.text = _fileLogo.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profil Perusahaan',
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
          child: Card(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(height: 20),
                    Center(
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          ProfilPerusahaanPic(),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      readOnly: true,
                      controller: logoPerusahaan,
                      decoration: InputDecoration(
                        isDense: true, // important line
                        contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: "Logo Perusahaan",
                        labelText: "Logo Perusahaan",
                      ),
                      keyboardType: TextInputType.none,
                      onTap: () {
                        startPickerLogo();
                      },
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
                            contentPadding: EdgeInsets.fromLTRB(10, 25, 10, 0),
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
                    Container(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.fromLTRB(10, 25, 10, 0),
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
                            contentPadding: EdgeInsets.fromLTRB(10, 25, 10, 0),
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
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent.shade200,
                        minimumSize: const Size.fromHeight(40),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 0),
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
