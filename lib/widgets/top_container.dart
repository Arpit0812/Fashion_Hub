import 'package:fashion_hub/widgets/search_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/svg.dart';

class TopContainer extends StatefulWidget {
  const TopContainer(
      {Key? key, required this.first, required this.second, this.third})
      : super(key: key);
  final first;
  final second;
  final third;
  @override
  State<TopContainer> createState() => _TopContainerState();
}

class _TopContainerState extends State<TopContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 130.h,
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
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                widget.first,
                widget.second,
                widget.third,
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -27.h,
          left: 25.w,
          child: SearchBox(text: "What are you looking for?"),
        ),
      ],
    );
  }
}
