// ignore_for_file: prefer_const_constructors, unused_import, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:bkol_mobile/navbar.dart';
import 'package:bkol_mobile/pages/homescreen/list_perusahaan.dart';
import 'package:bkol_mobile/pages/homescreen/lowongan.dart';
import 'package:bkol_mobile/pages/homescreen/home_page.dart';
import 'package:bkol_mobile/pages/homescreen/information_page.dart';
import 'package:bkol_mobile/pages/homescreen/notification/notification_page.dart';
import 'package:bkol_mobile/pages/login_page.dart';
import 'package:bkol_mobile/pages/widgets/appbar_home.dart';
import 'package:bkol_mobile/widgets/state_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
      builder: (context, child) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, child!),
        maxWidth: 1200,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'BURSA KERJA ONLINE'),
      debugShowCheckedModeBanner: false,
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
    StatePage(page: 'chat'),
    InformationPage(),
    StatePage(page: 'login'),
  ];
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavBar(),
      appBar: AppBar(
        title: RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
            text: widget.title,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            // ignore: prefer_const_literals_to_create_immutables
            children: <TextSpan>[
              TextSpan(
                text: '\nDINAS TENAGA KERJA DEPOK',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        elevation: 10,
        backgroundColor: Colors.white,
        leading: Container(
          padding: EdgeInsets.only(
            left: 20,
            top: 5,
            bottom: 5,
            right: 0,
          ),
          child: Image.asset('assets/images/icon.png'),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationPage()),
              );
            },
            icon: Icon(Icons.notifications_rounded),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
        ],
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
              icon: Icon(Icons.chat_outlined),
              selectedIcon: Icon(Icons.chat_rounded),
              label: 'Chat',
            ),
            NavigationDestination(
              icon: Icon(Icons.announcement_outlined),
              selectedIcon: Icon(Icons.announcement_sharp),
              label: 'Informasi',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings_outlined),
              selectedIcon: Icon(Icons.settings_rounded),
              label: 'Login',
            ),
          ],
        ),
      ),
    );
  }
}
