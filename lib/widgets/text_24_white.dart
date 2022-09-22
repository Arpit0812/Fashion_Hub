import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class Text24White extends StatelessWidget {
  Text24White({Key? key, required this.text, this.size = 24}) : super(key: key);

  final text;
  double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size.sp, color: Colors.white, fontWeight: FontWeight.w400),
    );
  }
}
