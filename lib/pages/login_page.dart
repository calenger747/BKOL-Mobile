// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'dart:ui';

import 'package:bkol_mobile/main.dart';
import 'package:bkol_mobile/pages/forgot_password.dart';
import 'package:bkol_mobile/pages/register/register_ak.dart';
import 'package:bkol_mobile/pages/register/register_page.dart';
import 'package:bkol_mobile/pages/register/register_perusahaan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final login_type = ['Perusahaan', 'Pencari Kerja'];
  String? value;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) =>
                MyHomePage(title: 'BURSA KERJA ONLINE'),
          ),
        );
        return false;
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BKOL Login Page',
        home: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    top: 200,
                    left: -100,
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Color(0x304599ff),
                        borderRadius: BorderRadius.all(
                          Radius.circular(150),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: -10,
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0x30cc33ff),
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 80,
                        sigmaY: 80,
                      ),
                      child: Container(),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 100,
                          ),
                          _logo(),
                          SizedBox(
                            height: 50,
                          ),
                          _loginLabel(),
                          SizedBox(
                            height: 60,
                          ),
                          Container(
                            child: DropdownButtonHideUnderline(
                              child: DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  hintText: "Pilihan Login",
                                  labelText: "Pilihan Login",
                                ),
                                value: value,
                                isExpanded: true,
                                items: login_type.map(login_typeList).toList(),
                                onChanged: (value) =>
                                    setState(() => this.value = value),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          _labelTextInput(
                              'Username', 'Username', Icon(Icons.group), false),
                          SizedBox(
                            height: 30,
                          ),
                          _labelTextInput(
                              'Password', '******', Icon(Icons.password), true),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: double.infinity,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xff008fff),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyHomePage(
                                      title: 'BURSA KERJA ONLINE',
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                "Login",
                                style: GoogleFonts.capriola(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextButton(
                            onPressed: () {
                              // _bottomSheetRegistration(context);
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgotPassword()),
                              );
                            },
                            child: _signUpLabel(
                                "Lupa Password?", Color(0xff164276)),
                          ),
                          SizedBox(
                            height: 45,
                          ),
                          _signUpLabel(
                              "Tidak Memiliki Akun?", Color(0xff909090)),
                          SizedBox(
                            height: 0,
                          ),
                          TextButton(
                            onPressed: () {
                              _bottomSheetRegistration(context);
                            },
                            child: _signUpLabel("Daftar", Color(0xff164276)),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> login_typeList(String item) => DropdownMenuItem(
        child: Text(
          item,
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        value: item,
      );

  _bottomSheetRegistration(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Wrap(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Pendaftaran',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade400,
                    ),
                  ),
                ),
                Divider(
                  height: 4,
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterPencaker()),
                    );
                  },
                  leading: Image.asset(
                    'assets/images/icons/job-seeker.png',
                    height: 40,
                  ),
                  title: Text(
                    'Daftar Sebagai Pencaker',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                Divider(
                  height: 2,
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterPerusahaan()),
                    );
                  },
                  leading: Image.asset(
                    'assets/images/icons/office-building.png',
                    height: 40,
                  ),
                  title: Text(
                    'Daftar Sebagai Perusahaan',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

Widget _logo() {
  return Center(
    child: SizedBox(
      child: Image.asset('assets/images/icon.png'),
      height: 100,
    ),
  );
}

Widget _loginLabel() {
  return Center(
    child: Text(
      'Login',
      style: GoogleFonts.lato(
        textStyle: TextStyle(
          color: Color(0xff164276),
          fontWeight: FontWeight.w900,
          fontSize: 34,
        ),
      ),
    ),
  );
}

Widget _labelTextInput(
    String label, String hintText, Icon icons, bool isPassword) {
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      hintText: hintText,
      labelText: label,
      prefixIcon: icons,
    ),
  );
}

Widget _signUpLabel(String label, Color textColor) {
  return Text(
    label,
    style: GoogleFonts.capriola(
      textStyle: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w800,
        fontSize: 18,
      ),
    ),
  );
}
