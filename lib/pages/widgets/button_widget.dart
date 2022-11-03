import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final Color color;
  final double horizontal, vertical;
  final double? fontSize;
  final double? heighButton;

  const ButtonWidget({
    super.key,
    required this.title,
    required this.color,
    required this.horizontal,
    required this.vertical,
    this.fontSize,
    this.heighButton,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heighButton,
      // width: heighButton,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color),
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontal,
            vertical: vertical,
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: (fontSize == null) ? 12 : fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
