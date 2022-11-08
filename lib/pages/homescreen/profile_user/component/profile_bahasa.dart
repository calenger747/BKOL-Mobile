// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bkol_mobile/pages/homescreen/daftar_lamaran_user/component/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileBahasa extends StatefulWidget {
  const ProfileBahasa({super.key});

  @override
  State<ProfileBahasa> createState() => _ProfileBahasaState();
}

class _ProfileBahasaState extends State<ProfileBahasa> {
  final DataTableSource _data = MyData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Penggunaan Bahasa',
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: 35,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                        textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {},
                      child: AutoSizeText(
                        "Tambah Bahasa",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                ),
              ),
              // ignore: prefer_const_literals_to_create_immutables
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Table(
                  border: TableBorder.all(),
                  // ignore: prefer_const_literals_to_create_immutables
                  columnWidths: {
                    0: FractionColumnWidth(0.15),
                    1: FractionColumnWidth(0.85),
                  },
                  children: [
                    BuildRow(['No', 'Nama Bahasa'], isHeader: true),
                    BuildRow(['1.', 'Inggris']),
                    BuildRow(['2.', 'Indonesia']),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TableRow BuildRow(List<String> cells, {bool isHeader = false}) => TableRow(
        children: cells.map((cell) {
          final style = TextStyle(
            fontWeight: isHeader == true ? FontWeight.bold : FontWeight.normal,
            fontSize: 16,
          );
          return Padding(
            padding: const EdgeInsets.all(12),
            child: isHeader == true
                ? Center(
                    child: Text(
                      cell,
                      style: style,
                    ),
                  )
                : Container(
                    child: Text(
                      cell,
                      style: style,
                    ),
                  ),
          );
        }).toList(),
      );
}
