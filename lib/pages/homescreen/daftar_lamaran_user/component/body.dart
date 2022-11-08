// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BodyDaftarLamaranUser extends StatefulWidget {
  const BodyDaftarLamaranUser({super.key});

  @override
  State<BodyDaftarLamaranUser> createState() => _BodyDaftarLamaranUserState();
}

class _BodyDaftarLamaranUserState extends State<BodyDaftarLamaranUser> {
  final DataTableSource _data = MyData();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        PaginatedDataTable(
          source: _data,
          // ignore: prefer_const_literals_to_create_immutables
          columns: [
            // ignore: prefer_const_constructors
            DataColumn(label: Text('ID')),
            DataColumn(label: Text('Perusahaan')),
            DataColumn(label: Text('Nama Lowongan')),
            DataColumn(label: Text('Tanggal Apply')),
            DataColumn(label: Text('Status')),
          ],
          columnSpacing: 30,
          horizontalMargin: 30,
        ),
      ],
    );
  }
}

class MyData extends DataTableSource {
  final List<Map<String, dynamic>> _data = List.generate(
    30,
    (index) => {
      "id": index + 1,
      "nama_perusahaan": "Perusahaan $index",
      "nama_lowongan": "Perusahaan $index",
      "tanggal_apply": "20/10/2022",
      "status": "Pending",
    },
  );

  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]["id"].toString())),
      DataCell(Text(_data[index]["nama_perusahaan"].toString())),
      DataCell(Text(_data[index]["nama_lowongan"].toString())),
      DataCell(Text(_data[index]["tanggal_apply"].toString())),
      DataCell(Text(_data[index]["status"].toString())),
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => _data.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 1;
}
