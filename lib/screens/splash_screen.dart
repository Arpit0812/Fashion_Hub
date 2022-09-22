import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'on_boarding1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnBoarding1(),
          )),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xff2D6A4F), Color(0xff40916C), Color(0xff52B788)],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 305.7.h),
            SvgPicture.asset(
              "assets/images/splash hub.svg",
              height: 154.h,
              width: 154.w,
            ),
            SizedBox(height: 11.7.h),
            SvgPicture.asset(
              "assets/images/fashon_font.svg",
              height: 67.h,
              width: 310.w,
            ),
          ],
        ),
      ),
    );
  }
}
