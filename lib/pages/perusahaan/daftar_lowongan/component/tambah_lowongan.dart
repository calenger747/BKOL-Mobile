// ignore_for_file: prefer_const_constructors, unnecessary_new, non_constant_identifier_names

import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bkol_mobile/pages/perusahaan/profil_perusahaan/component/profil_picture_perusahaan.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TambahLowongan extends StatefulWidget {
  const TambahLowongan({super.key});

  @override
  State<TambahLowongan> createState() => _TambahLowonganState();
}

class _TambahLowonganState extends State<TambahLowongan> {
  FilePickerResult? _resultLogo;
  PlatformFile? _pickedLogo;
  File? _displayLogo;
  String? _fileLogo;

  final pendidikan = ['SD', 'SMP', 'SMA/K', 'D3', 'S1/D4', 'S2', 'S3'];
  final posisi_jabatan = [
    'IT',
    'Admin',
    'Marketing',
    'Perawat',
    'Engineering',
    'Quality Control',
    'Driver'
  ];
  String? value1, value2, value3;

  TextEditingController logoFlyer = TextEditingController();
  TextEditingController tglMulai = TextEditingController();
  TextEditingController tglSelesai = TextEditingController();
  TextEditingController seleksiMulai = TextEditingController();
  TextEditingController seleksiSelesai = TextEditingController();
  TextEditingController pengumumanMulai = TextEditingController();
  TextEditingController pengumumanSelesai = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

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
        logoFlyer.text = _fileLogo.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          'Tambah Lowongan Pekerjaan',
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
          child: Column(
            children: [
              Card(
                child: Form(
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
                            "Info Lowongan Pekerjaan",
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
                            hintText: "Nama Lowongan",
                            labelText: "Nama Lowongan",
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
                            hintText: "Rincian Pekerjaan",
                            labelText: "Rincian Pekerjaan",
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
                                hintText: "Posisi Jabatan",
                                labelText: "Posisi Jabatan",
                              ),
                              value: value1,
                              isExpanded: true,
                              items: posisi_jabatan
                                  .map(posisi_jabatanList)
                                  .toList(),
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
                            hintText: "Lokasi Penempatan",
                            labelText: "Lokasi Penempatan",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                child: Form(
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
                            "Kebutuhan Loker",
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
                            hintText: "Jumlah Laki-Laki",
                            labelText: "Jumlah Laki-Laki",
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
                            hintText: "Jumlah Perempuan",
                            labelText: "Jumlah Perempuan",
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                child: Form(
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
                            "Persyaratan Loker",
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
                                hintText: "Minimal Pendidikan",
                                labelText: "Minimal Pendidikan",
                              ),
                              value: value2,
                              isExpanded: true,
                              items: pendidikan.map(pendidikanList).toList(),
                              onChanged: (value) =>
                                  setState(() => this.value2 = value),
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
                            hintText: "Jurusan",
                            labelText: "Jurusan",
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
                            hintText: "Batas Usia",
                            labelText: "Batas Usia",
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
                            hintText: "Syarat Lainnya",
                            labelText: "Syarat Lainnya",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                child: TextFormField(
                                  controller: tglMulai,
                                  decoration: InputDecoration(
                                    isDense: true, // important line
                                    contentPadding:
                                        EdgeInsets.fromLTRB(10, 30, 10, 0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    hintText: "Tanggal Awal",
                                    labelText: "Tanggal Awal",
                                  ),
                                  keyboardType: TextInputType.none,
                                  onTap: () async {
                                    DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1950),
                                      lastDate: DateTime(2100),
                                    );
                                    if (pickedDate != null) {
                                      String formattedDate =
                                          DateFormat("yyyy-MM-dd")
                                              .format(pickedDate);
                                      setState(() {
                                        tglMulai.text =
                                            formattedDate.toString();
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                child: TextFormField(
                                  controller: tglSelesai,
                                  decoration: InputDecoration(
                                    isDense: true, // important line
                                    contentPadding:
                                        EdgeInsets.fromLTRB(10, 30, 10, 0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    hintText: "Tanggal Berakhir",
                                    labelText: "Tanggal Berakhir",
                                  ),
                                  keyboardType: TextInputType.none,
                                  onTap: () async {
                                    DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1950),
                                      lastDate: DateTime(2100),
                                    );
                                    if (pickedDate != null) {
                                      String formattedDate =
                                          DateFormat("yyyy-MM-dd")
                                              .format(pickedDate);
                                      setState(() {
                                        tglSelesai.text =
                                            formattedDate.toString();
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                child: TextFormField(
                                  controller: seleksiMulai,
                                  decoration: InputDecoration(
                                    isDense: true, // important line
                                    contentPadding:
                                        EdgeInsets.fromLTRB(10, 30, 10, 0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    hintText: "Seleksi Mulai",
                                    labelText: "Seleksi Mulai",
                                  ),
                                  keyboardType: TextInputType.none,
                                  onTap: () async {
                                    DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1950),
                                      lastDate: DateTime(2100),
                                    );
                                    if (pickedDate != null) {
                                      String formattedDate =
                                          DateFormat("yyyy-MM-dd")
                                              .format(pickedDate);
                                      setState(() {
                                        seleksiMulai.text =
                                            formattedDate.toString();
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                child: TextFormField(
                                  controller: seleksiSelesai,
                                  decoration: InputDecoration(
                                    isDense: true, // important line
                                    contentPadding:
                                        EdgeInsets.fromLTRB(10, 30, 10, 0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    hintText: "Seleksi Berakhir",
                                    labelText: "Seleksi Berakhir",
                                  ),
                                  keyboardType: TextInputType.none,
                                  onTap: () async {
                                    DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1950),
                                      lastDate: DateTime(2100),
                                    );
                                    if (pickedDate != null) {
                                      String formattedDate =
                                          DateFormat("yyyy-MM-dd")
                                              .format(pickedDate);
                                      setState(() {
                                        seleksiSelesai.text =
                                            formattedDate.toString();
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                child: TextFormField(
                                  controller: pengumumanMulai,
                                  decoration: InputDecoration(
                                    isDense: true, // important line
                                    contentPadding:
                                        EdgeInsets.fromLTRB(10, 30, 10, 0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    hintText: "Pengumuman Mulai",
                                    labelText: "Pengumuman Mulai",
                                  ),
                                  keyboardType: TextInputType.none,
                                  onTap: () async {
                                    DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1950),
                                      lastDate: DateTime(2100),
                                    );
                                    if (pickedDate != null) {
                                      String formattedDate =
                                          DateFormat("yyyy-MM-dd")
                                              .format(pickedDate);
                                      setState(() {
                                        pengumumanMulai.text =
                                            formattedDate.toString();
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                child: TextFormField(
                                  controller: pengumumanSelesai,
                                  decoration: InputDecoration(
                                    isDense: true, // important line
                                    contentPadding:
                                        EdgeInsets.fromLTRB(10, 30, 10, 0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    hintText: "Pengumuman Berakhir",
                                    labelText: "Pengumuman Berakhir",
                                  ),
                                  keyboardType: TextInputType.none,
                                  onTap: () async {
                                    DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1950),
                                      lastDate: DateTime(2100),
                                    );
                                    if (pickedDate != null) {
                                      String formattedDate =
                                          DateFormat("yyyy-MM-dd")
                                              .format(pickedDate);
                                      setState(() {
                                        pengumumanSelesai.text =
                                            formattedDate.toString();
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          readOnly: true,
                          controller: logoFlyer,
                          decoration: InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Logo Flyer",
                            labelText: "Logo Flyer",
                          ),
                          keyboardType: TextInputType.none,
                          onTap: () {
                            startPickerLogo();
                          },
                        ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> posisi_jabatanList(String item) => DropdownMenuItem(
        child: Text(
          item,
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        value: item,
      );
  DropdownMenuItem<String> pendidikanList(String item) => DropdownMenuItem(
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
