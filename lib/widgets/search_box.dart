import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBox extends StatelessWidget {
  SearchBox({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      width: 333.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(48.r),
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 5),
        ],
      ),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        cursorColor: Color(0xff2D6A4F),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: text,
          hintStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w300),
          filled: true,
          contentPadding: EdgeInsets.only(left: 34.w, top: 18.h, bottom: 19.h),
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(48.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(48.r),
          ),
        ),
      ),
    );
  }
}
