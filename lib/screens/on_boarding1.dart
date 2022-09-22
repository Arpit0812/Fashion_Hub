import 'dart:async';

import 'package:fashion_hub/widgets/text_16_rag.dart';
import 'package:fashion_hub/widgets/text_20_bold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

import 'number_screen.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  PageController pageController = PageController(initialPage: 0);
  int selected = 0;

  List<Map<String, dynamic>> onBoarding = [
    {"title": "Online Order", "images": "assets/images/Illus - 5.png"},
    {"title": "Easy Payment", "images": "assets/images/Illus - 7.png"},
    {"title": "Fast Delivery", "images": "assets/images/Illus - 6.png"},
  ];
  List<String> sub1 = [
    "You can see the product with all angles,",
    "You just need to take a photo or upload and ",
    "You just need to take a photo or upload and "
  ];
  List<String> sub2 = [
    "true and convenient",
    "we will find similar products for you.",
    "we will find similar products for you."
  ];

  Timer? _timer;
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 4), (Timer timer) {
      if (selected < 2) {
        selected++;
      } else {
        selected = 0;
      }

      pageController.animateToPage(
        selected,
        duration: Duration(seconds: 2),
        curve: Curves.easeInOutCubicEmphasized,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    selected = value;
                  });
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 115.h),
                      Image.asset(
                        onBoarding[index]["images"],
                        height: 210.h,
                        width: 335.w,
                      ),
                      SizedBox(height: 123.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 126.w),
                        child: Text20Bold(text: onBoarding[index]["title"]),
                      ),
                      SizedBox(height: 32.h),
                      Text16Grey(text: sub1[index]),
                      Text16Grey(text: sub2[index]),
                    ],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: List.generate(
                    3,
                    (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = index;
                          });
                        },
                        child: selected == index
                            ? Container(
                                margin: EdgeInsets.symmetric(horizontal: 4.5.w),
                                height: 12,
                                width: 12,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: selected == index
                                      ? Color(0xff2D6A4F)
                                      : Color(0xff95D5B2),
                                ),
                              )
                            : Container(
                                margin: EdgeInsets.symmetric(horizontal: 4.5.w),
                                height: 6,
                                width: 6,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: selected == index
                                      ? Color(0xff2D6A4F)
                                      : Color(0xff95D5B2),
                                ),
                              )),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            MaterialButton(
              minWidth: 350.w,
              height: 60.h,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              color: Color(0xff95D5B2),
              child: Text(
                selected == 2 ? 'Get Started!' : 'Next',
                style: TextStyle(fontSize: 20.sp, color: Colors.white),
              ),
              onPressed: () {
                if (selected == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NumberScreen(),
                    ),
                  );
                } else {
                  setState(() {
                    selected++;
                    pageController.animateToPage(selected,
                        duration: Duration(seconds: 2),
                        curve: Curves.easeInOutCubicEmphasized);
                  });
                }
              },
            ),
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}
