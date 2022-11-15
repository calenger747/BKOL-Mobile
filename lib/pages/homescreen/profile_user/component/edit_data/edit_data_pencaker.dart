// ignore_for_file: prefer_const_constructors, unnecessary_new, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EditDataPencaker extends StatefulWidget {
  const EditDataPencaker({super.key});

  @override
  State<EditDataPencaker> createState() => _EditDataPencakerState();
}

class _EditDataPencakerState extends State<EditDataPencaker> {
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
  String? value1, value2, value3, value4, value5, value6, value7;

  TextEditingController tglLahirController = TextEditingController();

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profil',
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
                    TextFormField(
                      readOnly: true,
                      decoration: InputDecoration(
                        isDense: true, // important line
                        contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: "No. Pendaftaran",
                        labelText: "No. Pendaftaran",
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      readOnly: true,
                      decoration: InputDecoration(
                        isDense: true, // important line
                        contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: "Nomor Induk Pencaker",
                        labelText: "Nomor Induk Pencaker",
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
                            contentPadding: EdgeInsets.fromLTRB(10, 25, 10, 0),
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
                            tglLahirController.text = formattedDate.toString();
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
                            contentPadding: EdgeInsets.fromLTRB(10, 25, 10, 0),
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
                            contentPadding: EdgeInsets.fromLTRB(10, 25, 10, 0),
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
                            contentPadding: EdgeInsets.fromLTRB(10, 25, 10, 0),
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
                          items:
                              kewarganegaraan.map(kewarganegaraanList).toList(),
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
                            contentPadding: EdgeInsets.fromLTRB(10, 25, 10, 0),
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
}
