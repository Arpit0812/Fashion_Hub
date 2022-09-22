import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class Text16 extends StatelessWidget {
  Text16({Key? key, required this.text, this.color = Colors.black})
      : super(key: key);

  final text;
  final color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 16.sp, color: color),
    );
  }
}
