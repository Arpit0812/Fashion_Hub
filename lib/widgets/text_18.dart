import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class Text18 extends StatelessWidget {
  Text18({Key? key, required this.text}) : super(key: key);

  final text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 18.sp),
    );
  }
}
