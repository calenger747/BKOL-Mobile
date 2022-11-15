// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bkol_mobile/pages/homescreen/daftar_lamaran_user/component/body.dart';
import 'package:bkol_mobile/pages/homescreen/profile_user/component/bahasa/data_bahasa.dart';
import 'package:bkol_mobile/pages/homescreen/profile_user/component/bahasa/dialog_input_bahasa.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class ProfileBahasa extends StatefulWidget {
  const ProfileBahasa({super.key});

  @override
  State<ProfileBahasa> createState() => _ProfileBahasaState();
}

class _ProfileBahasaState extends State<ProfileBahasa> {
  final DataTableSource _data = MyData();
  final _formKey = GlobalKey<FormState>();
  final bahasa = [
    'Indonesia',
    'Inggris',
    'Mandarin',
    'Jepang',
    'Perancis',
    'Spanyol',
    'Arab'
  ];
  String? value1;

  void showAlertDialogCust() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Tambah Bahasa'),
          content: Stack(
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
                    SizedBox(height: 10),
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
                            hintText: "Bahasa",
                            labelText: "Bahasa",
                          ),
                          value: value1,
                          isExpanded: true,
                          items: bahasa.map(bahasaList).toList(),
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
        );
      },
    );
  }

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
                child: ChangeNotifierProvider<DataBahasaUser>(
                  create: (context) => DataBahasaUser(),
                  child: Consumer<DataBahasaUser>(
                    builder: (context, provider, child) {
                      if (provider.data == null) {
                        provider.getData(context);
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      return SingleChildScrollView(
                        child: DataTable(
                          // ignore: prefer_const_literals_to_create_immutables
                          columns: [
                            DataColumn(
                              label: Text('No'),
                            ),
                            DataColumn(
                              label: Text('Nama Bahasa'),
                              tooltip: 'nama bahasa',
                            ),
                            DataColumn(
                              label: Text('Action'),
                              tooltip: 'aksi',
                            ),
                          ],
                          rows: provider.data!.results!
                              .map(
                                (data) => DataRow(
                                  cells: [
                                    DataCell(
                                      Container(
                                        width: double.infinity,
                                        child: Text(data.no.toString()),
                                      ),
                                    ),
                                    DataCell(
                                      Container(
                                        width: 200,
                                        child: Text(data.bahasa.toString()),
                                      ),
                                    ),
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
    );
  }

  DropdownMenuItem<String> bahasaList(String item) => DropdownMenuItem(
        child: Text(
          item,
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        value: item,
      );
}
