import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class Text16Grey extends StatelessWidget {
  Text16Grey({Key? key, required this.text, this.size = 16}) : super(key: key);

  final text;
  double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: Colors.grey.shade500,
      ),
    );
  }
}
