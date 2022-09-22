import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class Text26White extends StatelessWidget {
  Text26White({Key? key, required this.text}) : super(key: key);

  final text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 26.sp, color: Colors.white, fontWeight: FontWeight.bold),
    );
  }
}
