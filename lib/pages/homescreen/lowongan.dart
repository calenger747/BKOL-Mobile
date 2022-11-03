// ignore_for_file: prefer_const_constructors

import 'package:bkol_mobile/pages/widgets/list_lowongan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListLowonganAll extends StatelessWidget {
  const ListLowonganAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListLowonganHome(),
          ),
        ],
      ),
    );
  }
}
