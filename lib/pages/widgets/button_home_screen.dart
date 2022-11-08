// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_element, unnecessary_new

import 'package:bkol_mobile/pages/homescreen/information_page.dart';
import 'package:bkol_mobile/pages/homescreen/lowongan.dart';
import 'package:bkol_mobile/pages/homescreen/training_page.dart';
import 'package:bkol_mobile/pages/login_page.dart';
import 'package:bkol_mobile/pages/register_page.dart';
import 'package:bkol_mobile/pages/widgets/list_lowongan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyButton extends StatefulWidget {
  final String iconButton;
  final String captionButton;
  final int state;
  final String hero;
  const MyButton({
    super.key,
    required this.iconButton,
    required this.captionButton,
    required this.state,
    required this.hero,
  });

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            SizedBox(
              height: 70,
              width: 70,
              child: FloatingActionButton(
                heroTag: widget.hero,
                backgroundColor: Colors.blue.shade100,
                onPressed: () {
                  if (widget.state == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  } else if (widget.state == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListLowonganAll(
                          title: 'Loker Depok',
                          page: 'inside',
                        ),
                      ),
                    );
                  } else if (widget.state == 3) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListLowonganAll(
                          title: 'Loker Luar Depok',
                          page: 'outside',
                        ),
                      ),
                    );
                  }
                },
                child: Image.asset(
                  widget.iconButton,
                  scale: 12,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              widget.captionButton,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent.shade700,
              ),
            ),
          ],
        ),
      ],
    );
  }

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
                  onTap: () {},
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
                  onTap: () {},
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
