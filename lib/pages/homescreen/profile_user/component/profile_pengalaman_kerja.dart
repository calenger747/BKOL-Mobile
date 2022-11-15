// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bkol_mobile/pages/homescreen/daftar_lamaran_user/component/body.dart';
import 'package:bkol_mobile/pages/homescreen/profile_user/component/pengalaman_kerja/data_pengalaman_kerja.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ProfilPengalamanUser extends StatefulWidget {
  const ProfilPengalamanUser({super.key});

  @override
  State<ProfilPengalamanUser> createState() => _ProfilPengalamanUserState();
}

class _ProfilPengalamanUserState extends State<ProfilPengalamanUser> {
  final DataTableSource _data = MyData();
  final _formKey = GlobalKey<FormState>();
  final status = ['Sudah Berhenti', 'Masih Bekerja'];
  String? value1;

  TextEditingController tglMasukController = TextEditingController();
  TextEditingController tglKeluarController = TextEditingController();

  void showAlertDialogCust() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Tambah Pengalaman Kerja'),
          content: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Positioned(
                  right: -40.0,
                  top: -40.0,
                  child: InkResponse(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: CircleAvatar(
                      child: Icon(Icons.close),
                      backgroundColor: Colors.red,
                    ),
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(height: 15),
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
                      SizedBox(height: 15),
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
                      SizedBox(height: 15),
                      TextFormField(
                        decoration: InputDecoration(
                          isDense: true, // important line
                          contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: "Unit Kerja",
                          labelText: "Unit Kerja",
                        ),
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        controller: tglMasukController,
                        decoration: InputDecoration(
                          isDense: true, // important line
                          contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: "Tanggal Masuk",
                          labelText: "Tanggal Masuk",
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
                            String formattedDate1 =
                                DateFormat("yyyy-MM-dd").format(pickedDate);
                            setState(() {
                              tglMasukController.text =
                                  formattedDate1.toString();
                            });
                          }
                        },
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        controller: tglKeluarController,
                        decoration: InputDecoration(
                          isDense: true, // important line
                          contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: "Tanggal Berhenti",
                          labelText: "Tanggal Berhenti",
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
                            String formattedDate2 =
                                DateFormat("yyyy-MM-dd").format(pickedDate);
                            setState(() {
                              tglKeluarController.text =
                                  formattedDate2.toString();
                            });
                          }
                        },
                      ),
                      SizedBox(height: 15),
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
                              hintText: "Status Pekerjaan",
                              labelText: "Status Pekerjaan",
                            ),
                            value: value1,
                            isExpanded: true,
                            items: status.map(statusList).toList(),
                            onChanged: (value) =>
                                setState(() => this.value1 = value),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
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
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pengalaman Kerja',
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
              showAlertDialogCust();
            },
            icon: Icon(Icons.add_sharp),
            color: Colors.black,
          ),
        ],
      ),
      backgroundColor: Colors.indigo.shade50,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ChangeNotifierProvider<DataPengalamanUser>(
                    create: (context) => DataPengalamanUser(),
                    child: Consumer<DataPengalamanUser>(
                      builder: (context, provider, child) {
                        if (provider.data == null) {
                          provider.getData(context);
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: DataTable(
                            // ignore: prefer_const_literals_to_create_immutables
                            columns: [
                              DataColumn(
                                label: Text('Action'),
                              ),
                              DataColumn(
                                label: Text('Nama Perusahaan'),
                                tooltip: 'nama perusahaan',
                              ),
                              DataColumn(
                                label: Text('Jabatan'),
                                tooltip: 'posisi jabatan',
                              ),
                              DataColumn(
                                label: Text('Tanggal Masuk'),
                                tooltip: 'tanggal masuk kerja',
                              ),
                              DataColumn(
                                label: Text('Tanggal Berakhir'),
                                tooltip: 'tanggal berakhir kerja',
                              ),
                              DataColumn(
                                label: Text('Status'),
                                tooltip: 'status pekerjaan',
                              ),
                            ],
                            rows: provider.data!.result!
                                .map(
                                  (data) => DataRow(
                                    cells: [
                                      DataCell(
                                        Container(
                                          width: 30,
                                          child: SizedBox(
                                            height: 25,
                                            width: 25,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.redAccent.shade700,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 5, vertical: 0),
                                                textStyle: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              onPressed: () {},
                                              child: Icon(
                                                Icons.delete,
                                                color: Colors.white,
                                                size: 18,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      DataCell(
                                        Container(
                                          child: Text(
                                              data.namaPerusahaan.toString()),
                                        ),
                                      ),
                                      DataCell(
                                        Container(
                                          child: Text(data.jabatan.toString()),
                                        ),
                                      ),
                                      DataCell(
                                        Container(
                                          child: Text(data.tglMasuk.toString()),
                                        ),
                                      ),
                                      DataCell(
                                        Container(
                                          child:
                                              Text(data.tglBerhenti.toString()),
                                        ),
                                      ),
                                      DataCell(
                                        Container(
                                          child: Text(
                                            (data.status == false)
                                                ? 'Sudah Berhenti'
                                                : 'Masih Bekerja',
                                            style: TextStyle(
                                              color: (data.status == false)
                                                  ? Colors.white
                                                  : Colors.black,
                                              background: Paint()
                                                ..color = (data.status == false)
                                                    ? Colors.red
                                                    : Colors
                                                        .greenAccent.shade400
                                                ..strokeWidth = 17
                                                ..style = PaintingStyle.stroke,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                                .toList(),
                          ),
                        );
                      },
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
