// ignore_for_file: prefer_const_constructors, unused_import, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:bkol_mobile/pages/homescreen/list_perusahaan.dart';
import 'package:bkol_mobile/pages/homescreen/lowongan.dart';
import 'package:bkol_mobile/pages/homescreen/home_page.dart';
import 'package:bkol_mobile/pages/homescreen/information_page.dart';
import 'package:bkol_mobile/pages/login_page.dart';
import 'package:bkol_mobile/pages/widgets/appbar_home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bursa Kerja Online Dinas Tenaga Kerja Depok',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'BURSA KERJA ONLINE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  final screens = [
    HomePage(),
    ListLowonganAll(),
    InformationPage(),
    ListPerusahaan(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(
        title: widget.title,
      ),
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade300,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: Color(0xFFf1f5fb),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: FaIcon(FontAwesomeIcons.newspaper),
              selectedIcon: FaIcon(FontAwesomeIcons.solidNewspaper),
              label: 'Lowongan',
            ),
            NavigationDestination(
              icon: Icon(Icons.announcement_outlined),
              selectedIcon: Icon(Icons.announcement_sharp),
              label: 'Informasi',
            ),
            NavigationDestination(
              icon: FaIcon(FontAwesomeIcons.building),
              selectedIcon: FaIcon(FontAwesomeIcons.hotel),
              label: 'Data Perusahaan',
            ),
          ],
        ),
      ),
    );
  }
}
