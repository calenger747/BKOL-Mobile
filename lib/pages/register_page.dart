// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'dart:ui';

import 'package:bkol_mobile/main.dart';
import 'package:bkol_mobile/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final items = ['Male', 'Female'];
  String? value;
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BKOL Register Page',
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
                          height: 60,
                        ),
                        _logo(),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Register',
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              color: Color(0xff164276),
                              fontWeight: FontWeight.w900,
                              fontSize: 34,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          maxLength: 16,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "NIK",
                            labelText: "NIK",
                            prefixIcon: Icon(Icons.numbers_rounded),
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Nama Lengkap",
                            labelText: "Nama Lengkap",
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        // Container(
                        //   child: DropdownButtonHideUnderline(
                        //     child: DropdownButtonFormField<String>(
                        //       decoration: InputDecoration(
                        //         border: OutlineInputBorder(
                        //           borderRadius: BorderRadius.all(
                        //             Radius.circular(10),
                        //           ),
                        //         ),
                        //         hintText: "Jenis Kelamin",
                        //         labelText: "Jenis Kelamin",
                        //       ),
                        //       value: value,
                        //       isExpanded: true,
                        //       items: items.map(buildMenuItem).toList(),
                        //       onChanged: (value) =>
                        //           setState(() => this.value = value),
                        //     ),
                        //   ),
                        // ),
                        // SizedBox(
                        //   height: 17,
                        // ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Email",
                            labelText: "Email",
                            prefixIcon: Icon(Icons.email_rounded),
                          ),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        TextFormField(
                          maxLength: 10,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Password",
                            labelText: "Password",
                            prefixIcon: Icon(Icons.password),
                          ),
                        ),
                        TextFormField(
                          maxLength: 10,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Confirm Password",
                            labelText: "Confirm Password",
                            prefixIcon: Icon(Icons.password),
                          ),
                        ),
                        SizedBox(
                          height: 17,
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
                              "Register",
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
                          height: 60,
                        ),
                        _signUpLabel("Sudah Memiliki Akun?", Color(0xff909090)),
                        SizedBox(
                          height: 0,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          child: _signUpLabel("Login", Color(0xff164276)),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                      ],
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

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        child: Text(
          item,
          style: TextStyle(
            fontSize: 17,
          ),
        ),
        value: item,
      );
}

Widget _logo() {
  return Center(
    child: SizedBox(
      child: Image.asset('assets/images/icon.png'),
      height: 100,
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
