// ignore_for_file: prefer_const_constructors, unnecessary_new, non_constant_identifier_names

import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RegisterPencaker extends StatefulWidget {
  const RegisterPencaker({super.key});

  @override
  State<RegisterPencaker> createState() => _RegisterPencakerState();
}

class _RegisterPencakerState extends State<RegisterPencaker> {
  final gender = ['Pria', 'Wanita'];
  final minat = ['Karyawan', 'Wirausaha'];
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
  final kewarganegaraan = ['WNI', 'WNA'];
  final agama = [
    'Islam',
    'Protestan',
    'Katholik',
    'Hindu',
    'Buddha',
    'Konghucu',
    'Kepercayaan Terhadap Tuhan YME'
  ];
  final status_pernikahan = [
    'Karyawan',
    'Wirausaha',
  ];

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

  String? value1,
      value2,
      value3,
      value4,
      value5,
      value6,
      value7,
      value8,
      value9,
      value10,
      value11,
      value12,
      value13;

  TextEditingController tglLahirController = TextEditingController();
  TextEditingController tglKunjunganController = TextEditingController();

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Registrasi Pencaker',
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
                            hintText: "Nomor KTP",
                            labelText: "Nomor KTP",
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
                                hintText: "Minat Pekerjaan",
                                labelText: "Minat Pekerjaan",
                              ),
                              value: value2,
                              isExpanded: true,
                              items: minat.map(minatList).toList(),
                              onChanged: (value) =>
                                  setState(() => this.value2 = value),
                            ),
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
                            "Data Pencari Kerja",
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
                            hintText: "Nama Pencari Kerja",
                            labelText: "Nama Pencari Kerja",
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
                                hintText: "Jenis Kelamin",
                                labelText: "Jenis Kelamin",
                              ),
                              value: value1,
                              isExpanded: true,
                              items: gender.map(genderList).toList(),
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
                            hintText: "Tempat Lahir",
                            labelText: "Tempat Lahir",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: tglLahirController,
                          decoration: InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Tanggal Lahir",
                            labelText: "Tanggal Lahir",
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
                                  DateFormat("yyyy-MM-dd").format(pickedDate);
                              setState(() {
                                tglLahirController.text =
                                    formattedDate.toString();
                              });
                            }
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
                              value: value3,
                              isExpanded: true,
                              items: kecamatan.map(kecamatanList).toList(),
                              onChanged: (value) =>
                                  setState(() => this.value3 = value),
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
                              value: value4,
                              isExpanded: true,
                              items: kelurahan.map(kelurahanList).toList(),
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
                            hintText: "Kode Pos",
                            labelText: "Kode Pos",
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
                                hintText: "Kewarganegaraan",
                                labelText: "Kewarganegaraan",
                              ),
                              value: value5,
                              isExpanded: true,
                              items: kewarganegaraan
                                  .map(kewarganegaraanList)
                                  .toList(),
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
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 25, 10, 0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                hintText: "Agama",
                                labelText: "Agama",
                              ),
                              value: value6,
                              isExpanded: true,
                              items: agama.map(agamaList).toList(),
                              onChanged: (value) =>
                                  setState(() => this.value6 = value),
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
                                hintText: "Status Pernikahaan",
                                labelText: "Status Pernikahaan",
                              ),
                              value: value7,
                              isExpanded: true,
                              items: status_pernikahan.map(statusList).toList(),
                              onChanged: (value) =>
                                  setState(() => this.value7 = value),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
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
                            "Data Pendidikan",
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
                                hintText: "Pendidikan Terakhhir",
                                labelText: "Pendidikan Terakhhir",
                              ),
                              value: value8,
                              isExpanded: true,
                              items: pendidikan.map(pendidikanList).toList(),
                              onChanged: (value) =>
                                  setState(() => this.value8 = value),
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
                                hintText: "Jurusan",
                                labelText: "Jurusan",
                              ),
                              value: value9,
                              isExpanded: true,
                              items: jurusan.map(jurusanList).toList(),
                              onChanged: (value) =>
                                  setState(() => this.value9 = value),
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
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 25, 10, 0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                hintText: "NEM/IPK",
                                labelText: "NEM/IPK",
                              ),
                              value: value10,
                              isExpanded: true,
                              items: ipk_nem.map(ipk_nemList).toList(),
                              onChanged: (value) =>
                                  setState(() => this.value10 = value),
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
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 25, 10, 0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                hintText: "Tahun Lulus",
                                labelText: "Tahun Lulus",
                              ),
                              value: value11,
                              isExpanded: true,
                              items: tahun_lulus.map(tahun_lulusList).toList(),
                              onChanged: (value) =>
                                  setState(() => this.value11 = value),
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
                        SizedBox(height: 20),
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
                            "Jabatan Yang Diinginkan",
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
                              value: value12,
                              isExpanded: true,
                              items: posisi_jabatan
                                  .map(posisi_jabatanList)
                                  .toList(),
                              onChanged: (value) =>
                                  setState(() => this.value12 = value),
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
                                hintText: "Lokasi",
                                labelText: "Lokasi",
                              ),
                              value: value13,
                              isExpanded: true,
                              items: lokasi.map(lokasiList).toList(),
                              onChanged: (value) =>
                                  setState(() => this.value13 = value),
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
                            "Jadwal Kunjungan",
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
                          controller: tglKunjunganController,
                          decoration: InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Tanggal Kunjungan",
                            labelText: "Tanggal Kunjungan",
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
                                  DateFormat("yyyy-MM-dd").format(pickedDate);
                              setState(() {
                                tglKunjunganController.text =
                                    formattedDate.toString();
                              });
                            }
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> genderList(String item) => DropdownMenuItem(
        child: Text(
          item,
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        value: item,
      );
  DropdownMenuItem<String> minatList(String item) => DropdownMenuItem(
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
  DropdownMenuItem<String> kewarganegaraanList(String item) => DropdownMenuItem(
        child: Text(
          item,
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        value: item,
      );
  DropdownMenuItem<String> agamaList(String item) => DropdownMenuItem(
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
}
