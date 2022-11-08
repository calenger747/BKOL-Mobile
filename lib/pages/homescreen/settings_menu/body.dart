// ignore_for_file: prefer_const_constructors

import 'package:bkol_mobile/pages/homescreen/change_password/change_password.dart';
import 'package:bkol_mobile/pages/homescreen/daftar_lamaran_user/daftar_lamaran.dart';
import 'package:bkol_mobile/pages/homescreen/profile_user/profile_user.dart';
import 'package:bkol_mobile/pages/homescreen/settings_menu/profil_pic.dart';
import 'package:bkol_mobile/pages/homescreen/settings_menu/profile_menu.dart';
import 'package:bkol_mobile/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BodyProfile extends StatelessWidget {
  const BodyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ProfilPic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "Data Pribadi",
            icon: "assets/images/icon/User Icon.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => ProfileUserPage(),
                ),
              );
            },
          ),
          // ProfileMenu(
          //   text: "Profil Perusahaan",
          //   icon: "assets/images/icon/User Icon.svg",
          //   press: () => {},
          // ),
          ProfileMenu(
            text: "Riwayat Lamaran",
            icon: "assets/images/icon/receipt.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => DaftarLamaranUser(),
                ),
              );
            },
          ),
          ProfileMenu(
            text: "Ubah Password",
            icon: "assets/images/icon/Lock.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => ChangePassword(),
                ),
              );
            },
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/images/icon/Log out.svg",
            press: () {
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
