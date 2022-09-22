import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerDemo2 extends StatelessWidget {
  ContainerDemo2({Key? key, required this.text, this.width = 350})
      : super(key: key);

  final String text;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: width,
      decoration: BoxDecoration(
        color: Color(0xff95D5B2),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 16.sp, color: Colors.white),
        ),
      ),
    );
  }
}
