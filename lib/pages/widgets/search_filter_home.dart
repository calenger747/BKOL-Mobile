// ignore_for_file: prefer_const_constructors

import 'package:bkol_mobile/pages/homescreen/lowongan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FilterLokerHome extends StatefulWidget {
  const FilterLokerHome({super.key});

  @override
  State<FilterLokerHome> createState() => _FilterLokerHomeState();
}

class _FilterLokerHomeState extends State<FilterLokerHome> {
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
  String? value1, value2;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
              isDense: true, // important line
              contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              hintText: "Posisi",
              labelText: "Posisi",
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
                        hintText: "Pendidikan",
                        labelText: "Pendidikan",
                      ),
                      value: value1,
                      isExpanded: true,
                      items: pendidikan.map(pendidikanList).toList(),
                      onChanged: (value) => setState(() => this.value1 = value),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
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
                      onChanged: (value) => setState(() => this.value2 = value),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Builder(
                builder: (context) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent.shade200,
                    minimumSize: const Size.fromHeight(40),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListLowonganAll(
                          title: 'Lowongan Pekerjaan',
                          page: 'inside',
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    'Cari Sekarang',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
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
  DropdownMenuItem<String> jurusanList(String item) => DropdownMenuItem(
        child: Text(
          item,
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        value: item,
      );
}
