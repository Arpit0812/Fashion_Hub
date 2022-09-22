import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class Text20Bold extends StatelessWidget {
  Text20Bold({Key? key, required this.text, this.color}) : super(key: key);

  final text;
  final color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.sp,
        color: color,
      ),
    );
  }
}
