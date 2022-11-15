// ignore_for_file: prefer_const_constructors, unnecessary_new, non_constant_identifier_names

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class EditDataCV extends StatefulWidget {
  const EditDataCV({super.key});

  @override
  State<EditDataCV> createState() => _EditDataCVState();
}

class _EditDataCVState extends State<EditDataCV> {
  final pendidikan = ['SD', 'SMP', 'SMA/K', 'D3', 'S1/D4', 'S2', 'S3'];
  final jurusan = [
    'Akuntansi',
    'RPL',
    'TKJ',
    'Multimedia',
    'TKR',
    'Perhotelan',
    'Perbankan'
  ];
  final ipk_nem = ['IPK', 'NEM'];
  final tahun_lulus = [
    '2010',
    '2011',
    '2012',
    '2013',
    '2014',
    '2015',
    '2016',
    '2017',
    '2018',
    '2019',
    '2020',
    '2021',
    '2022'
  ];
  final posisi_jabatan = [
    'IT',
    'Admin',
    'Marketing',
    'Perawat',
    'Engineering',
    'Quality Control',
    'Driver'
  ];
  final lokasi = ['Dalam Negeri', 'Luar Negeri', 'Dimana Saja'];
  String? value1, value2, value3, value4, value5, value6;

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit CV',
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
                    AutoSizeText(
                      'Pendidikan Formal',
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
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
                            hintText: "Pendidikan Terakhhir",
                            labelText: "Pendidikan Terakhhir",
                          ),
                          value: value1,
                          isExpanded: true,
                          items: pendidikan.map(pendidikanList).toList(),
                          onChanged: (value) =>
                              setState(() => this.value1 = value),
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
                            hintText: "Jurusan",
                            labelText: "Jurusan",
                          ),
                          value: value2,
                          isExpanded: true,
                          items: jurusan.map(jurusanList).toList(),
                          onChanged: (value) =>
                              setState(() => this.value2 = value),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      enabled: false,
                      decoration: InputDecoration(
                        isDense: true, // important line
                        contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: "Keterampilan",
                        labelText: "Keterampilan",
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
                            hintText: "NEM/IPK",
                            labelText: "NEM/IPK",
                          ),
                          value: value3,
                          isExpanded: true,
                          items: ipk_nem.map(ipk_nemList).toList(),
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
                        hintText: "Nilai",
                        labelText: "Nilai",
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
                            contentPadding: EdgeInsets.fromLTRB(10, 25, 10, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Tahun Lulus",
                            labelText: "Tahun Lulus",
                          ),
                          value: value4,
                          isExpanded: true,
                          items: tahun_lulus.map(tahun_lulusList).toList(),
                          onChanged: (value) =>
                              setState(() => this.value4 = value),
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
                        hintText: "Tinggi Badan (cm)",
                        labelText: "Tinggi Badan (cm)",
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
                        hintText: "Berat Badan (cm)",
                        labelText: "Berat Badan (cm)",
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
                        hintText: "Keterangan",
                        labelText: "Keterangan",
                      ),
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    AutoSizeText(
                      'Jabatan Yang Diinginkan',
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
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
                            hintText: "Posisi Jabatan",
                            labelText: "Posisi Jabatan",
                          ),
                          value: value5,
                          isExpanded: true,
                          items:
                              posisi_jabatan.map(posisi_jabatanList).toList(),
                          onChanged: (value) =>
                              setState(() => this.value5 = value),
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
                            hintText: "Lokasi",
                            labelText: "Lokasi",
                          ),
                          value: value6,
                          isExpanded: true,
                          items: lokasi.map(lokasiList).toList(),
                          onChanged: (value) =>
                              setState(() => this.value6 = value),
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
                        hintText: "Gaji yang Diinginkan",
                        labelText: "Gaji yang Diinginkan",
                      ),
                      keyboardType: TextInputType.number,
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

  DropdownMenuItem<String> pendidikanList(String item) => DropdownMenuItem(
        child: Text(
          item,
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        value: item,
      );
  DropdownMenuItem<String> ipk_nemList(String item) => DropdownMenuItem(
        child: Text(
          item,
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        value: item,
      );
  DropdownMenuItem<String> jurusanList(String item) => DropdownMenuItem(
        child: Text(
          item,
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        value: item,
      );
  DropdownMenuItem<String> tahun_lulusList(String item) => DropdownMenuItem(
        child: Text(
          item,
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        value: item,
      );
  DropdownMenuItem<String> lokasiList(String item) => DropdownMenuItem(
        child: Text(
          item,
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        value: item,
      );
  DropdownMenuItem<String> posisi_jabatanList(String item) => DropdownMenuItem(
        child: Text(
          item,
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        value: item,
      );
  DropdownMenuItem<String> statusList(String item) => DropdownMenuItem(
        child: Text(
          item,
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        value: item,
      );
}
