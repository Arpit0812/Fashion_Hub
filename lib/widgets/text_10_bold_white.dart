import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class Text10BoldWhite extends StatelessWidget {
  Text10BoldWhite({Key? key, required this.text}) : super(key: key);

  final text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 10.sp, color: Colors.white),
    );
  }
}
