// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'dart:async';

import 'package:bkol_mobile/main.dart';
import 'package:bkol_mobile/pages/homescreen/home_page.dart';
import 'package:bkol_mobile/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class StatePage extends StatefulWidget {
  final String page;

  const StatePage({super.key, required this.page});

  @override
  State<StatePage> createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  void _launchWhatsapp({required number, required message}) async {
    // String url = "whatspp://send?phone=$number&text=$message";
    String url = "https://wa.me/6285158255512?text=$message";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void navigationPage() async {
    if (widget.page == "login") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => LoginPage(),
        ),
      );
    } else if (widget.page == "chat") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => MyHomePage(
            title: 'BURSA KERJA ONLINE',
          ),
        ),
      );
      _launchWhatsapp(number: "+6285158255512", message: "Hello");
    } else if (widget.page == "chat2") {
      Navigator.pop(context);
      _launchWhatsapp(number: "+6285158255512", message: "Hello");
    }
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(microseconds: -1), navigationPage);
  }

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
