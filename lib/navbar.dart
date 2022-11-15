// ignore_for_file: prefer_const_constructors

import 'package:bkol_mobile/main.dart';
import 'package:bkol_mobile/pages/homescreen/list_perusahaan.dart';
import 'package:bkol_mobile/pages/homescreen/lowongan.dart';
import 'package:bkol_mobile/pages/homescreen/settings_page.dart';
import 'package:bkol_mobile/pages/homescreen/training_page.dart';
import 'package:bkol_mobile/pages/login_page.dart';
import 'package:bkol_mobile/pages/perusahaan/daftar_lowongan/lowongan_perusahaan.dart';
import 'package:bkol_mobile/pages/perusahaan/status_lowongan/status_lowongan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  Future<void> _launchUrl(Uri _url) async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final Uri urlBKK =
        Uri(scheme: 'https', host: 'bkol.depok.go.id', path: 'bkk/');
    final Uri urlP3MI =
        Uri(scheme: 'https', host: 'bkol.depok.go.id', path: 'pmi/');

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Dinas Ketenagakerjaan"),
            accountEmail: Text("disnaker@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/8.jpg",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              image: DecorationImage(
                image: AssetImage("assets/images/background/img1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home_rounded),
            title: Text("Home"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(
                    title: 'BURSA KERJA ONLINE',
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.building),
            title: Text("Data Perusahaan"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListPerusahaan(),
                ),
              );
            },
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.newspaper),
            title: Text("Data Lowongan"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListLowonganAll(
                    title: 'Lowongan Pekerjaan',
                    page: 'all',
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.bookOpenReader),
            title: Text("Pelatihan"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TrainingPage()),
              );
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.announcement_sharp),
          //   title: Text("Informasi"),
          //   onTap: () {},
          // ),
          ListTile(
            leading: Icon(Icons.width_normal_outlined),
            title: Text("BKK"),
            onTap: () => _launchUrl(urlBKK),
          ),
          ListTile(
            leading: Icon(Icons.business_rounded),
            title: Text("P3MI"),
            onTap: () => _launchUrl(urlP3MI),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.newspaper),
            title: Text("Daftar Lowongan Kerja"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LowonganPerusahaan()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.fact_check_sharp),
            title: Text("Daftar Status Lowongan Kerja"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StatusLowongan()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profil & Pengaturan"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingSPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => LoginPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
