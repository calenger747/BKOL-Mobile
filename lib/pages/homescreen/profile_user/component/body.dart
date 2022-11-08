// ignore_for_file: prefer_const_constructors

import 'package:bkol_mobile/pages/homescreen/change_password/change_password.dart';
import 'package:bkol_mobile/pages/homescreen/profile_user/component/profil_pic.dart';
import 'package:bkol_mobile/pages/homescreen/profile_user/component/profile_bahasa.dart';
import 'package:bkol_mobile/pages/homescreen/profile_user/component/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileUserBody extends StatelessWidget {
  const ProfileUserBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ProfilUserPic(),
          SizedBox(height: 20),
          ProfileUserMenu(
            text: "Profil Pencari Kerja",
            icon: "assets/images/icon/User Icon.svg",
            press: () => {},
          ),
          // ProfileMenu(
          //   text: "Profil Perusahaan",
          //   icon: "assets/images/icon/User Icon.svg",
          //   press: () => {},
          // ),
          ProfileUserMenu(
            text: "Penggunaan Bahasa",
            icon: "assets/images/icon/language-svgrepo-com.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => ProfileBahasa(),
                ),
              );
            },
          ),
          ProfileUserMenu(
            text: "Pengalaman Kerja",
            icon: "assets/images/icon/work-svgrepo-com.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
