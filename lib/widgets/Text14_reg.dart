import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class Text14Reg extends StatelessWidget {
  Text14Reg({Key? key, required this.text, this.color = Colors.black})
      : super(key: key);

  final text;
  final color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 14.sp, color: color),
    );
  }
}
