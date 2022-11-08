// ignore_for_file: unnecessary_new, prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:bkol_mobile/pages/homescreen/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePasswordBody extends StatefulWidget {
  const ChangePasswordBody({super.key});

  @override
  State<ChangePasswordBody> createState() => _ChangePasswordBodyState();
}

class _ChangePasswordBodyState extends State<ChangePasswordBody> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController oldPassowordController =
      new TextEditingController();
  final TextEditingController newPassowordController =
      new TextEditingController();
  final TextEditingController newConfirmPassowordController =
      new TextEditingController();
  bool obscurePass1 = true;
  bool obscurePass2 = true;
  bool obscurePass3 = true;

  @override
  Widget build(BuildContext context) {
    final oldPassowordField = TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please input password';
        } else {
          return null;
        }
      },
      style: TextStyle(color: Colors.black),
      obscureText: obscurePass1,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      inputFormatters: [
        LengthLimitingTextInputFormatter(8),
      ],
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: Icon(obscurePass1 == false
              ? Icons.visibility
              : Icons.visibility_off_outlined),
          onPressed: () {
            setState(() {
              obscurePass1 = !obscurePass1;
            });
          },
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: 'Old Password',
        hintStyle: TextStyle(color: Colors.black),
      ),
    );

    final newPassowordField = TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please input password';
        } else {
          return null;
        }
      },
      style: TextStyle(color: Colors.black),
      obscureText: obscurePass2,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      inputFormatters: [
        LengthLimitingTextInputFormatter(8),
      ],
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: Icon(obscurePass2 == false
              ? Icons.visibility
              : Icons.visibility_off_outlined),
          onPressed: () {
            setState(() {
              obscurePass2 = !obscurePass2;
            });
          },
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: 'New Password',
        hintStyle: TextStyle(color: Colors.black),
      ),
    );

    final newConfirmPassowordField = TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please input password';
        } else {
          return null;
        }
      },
      style: TextStyle(color: Colors.black),
      obscureText: obscurePass3,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      inputFormatters: [
        LengthLimitingTextInputFormatter(8),
      ],
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: Icon(obscurePass3 == false
              ? Icons.visibility
              : Icons.visibility_off_outlined),
          onPressed: () {
            setState(() {
              obscurePass3 = !obscurePass3;
            });
          },
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: 'New Confirm Password',
        hintStyle: TextStyle(color: Colors.black),
      ),
    );

    return Center(
      child: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Image.asset('assets/images/icon.png'),
                    height: 100,
                  ),
                  SizedBox(height: 50),
                  oldPassowordField,
                  SizedBox(height: 20),
                  newPassowordField,
                  SizedBox(height: 20),
                  newConfirmPassowordField,
                  SizedBox(height: 20),
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
                            builder: (context) => SettingSPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Ubah Password",
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
