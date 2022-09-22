import 'package:fashion_hub/widgets/search_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/svg.dart';

class TopContainer2 extends StatefulWidget {
  const TopContainer2(
      {Key? key, required this.first, required this.second, this.third})
      : super(key: key);
  final first;
  final second;
  final third;
  @override
  State<TopContainer2> createState() => _TopContainer2State();
}

class _TopContainer2State extends State<TopContainer2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff2D6A4F),
            Color(0xff95D5B2),
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.r),
          bottomRight: Radius.circular(30.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 30.h, right: 20.w, left: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            widget.first,
            widget.second,
            widget.third,
          ],
        ),
      ),
    );
  }
}
