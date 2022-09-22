import 'package:fashion_hub/screens/bottom_nav_bar.dart';
import 'package:fashion_hub/screens/cart_screen.dart';
import 'package:fashion_hub/widgets/text_12.dart';
import 'package:fashion_hub/widgets/text_16.dart';
import 'package:fashion_hub/widgets/text_18.dart';
import 'package:fashion_hub/widgets/text_20_bold.dart';
import 'package:fashion_hub/widgets/top_container_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/svg.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  List<Map<String, dynamic>> catagories = [
    {'image': 'assets/images/Group 131.png'},
    {'image': 'assets/images/Group 139.png'},
    {'image': 'assets/images/Group 140.png'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 182.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
          boxShadow: [
            BoxShadow(color: Colors.grey.shade300, blurRadius: 1),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text12(text: "items"),
                  Text12(text: "\$199.89"),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text12(text: "Delivery"),
                  Text12(text: "\$20"),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text16(text: "Total Price"),
                  Text16(text: "\$239.98"),
                ],
              ),
              SizedBox(height: 15.h),
              MaterialButton(
                minWidth: 350.w,
                height: 40.h,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                color: Color(0xff95D5B2),
                child: Text(
                  'Pay',
                  style: TextStyle(fontSize: 20.sp, color: Colors.white),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        contentPadding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/diloge.svg",
                                    height: 118.96.h,
                                    width: 295.62.w,
                                  ),
                                  Positioned(
                                    top: 30.h,
                                    left: 100.w,
                                    child: SvgPicture.asset(
                                      "assets/images/dilog-tick.svg",
                                      height: 60.h,
                                      width: 60.w,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 18.h),
                              Text(
                                "Success",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26.sp,
                                ),
                              ),
                              SizedBox(height: 13.h),
                              Text16(
                                  text: "Your order will be delivered soon."),
                              Text16(
                                  text:
                                      'It can be tracked in the "Orders" section.'),
                              SizedBox(height: 27.h),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 45.w),
                                child: MaterialButton(
                                  minWidth: 350.w,
                                  height: 40.h,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  color: Color(0xff95D5B2),
                                  child: Text(
                                    'Continue Shopping',
                                    style: TextStyle(
                                        fontSize: 20.sp, color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => BottomNavBar(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(height: 25.h),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CartScreen(),
                                      ));
                                },
                                child: Text16(
                                  text: "Go to Orders",
                                  color: Color(0xff2D6A4F),
                                ),
                              ),
                              SizedBox(height: 20.h),
                            ],
                          )
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
      appBar: PreferredSize(
        child: TopContainer2(
          first: InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(),
                ),
              );
            },
            child: SvgPicture.asset(
              "assets/images/left-arrow.svg",
              height: 16.67.h,
              width: 20.w,
            ),
          ),
          second: Text20Bold(
            text: "Check Out",
            color: Colors.white,
          ),
          third: SvgPicture.asset(
            "assets/images/left-arrow.svg",
            color: Colors.transparent,
            height: 25.h,
            width: 25.w,
          ),
        ),
        preferredSize: Size.fromHeight(100.h),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 14.h),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/images/placeholder.svg",
                  height: 20.h,
                  width: 15.w,
                ),
                SizedBox(width: 10.w),
                Text18(text: "Shipping Address")
              ],
            ),
            SizedBox(height: 21.h),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.h),
              height: 90.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2,
                  ),
                ],
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text16(text: "Oleh ChaBaNov"),
                        Spacer(),
                        Text(
                          'Change',
                          style: TextStyle(
                            fontSize: 14.sp,
                          ),
                        ),
                        InkWell(
                          child: Icon(Icons.keyboard_arrow_right),
                          onTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      '225, Highland Area,\nSpringfield, Il 62704, USA',
                      style: TextStyle(
                        color: Color(0xff707070),
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 26.h),
            Row(
              children: [
                Image(
                  image: AssetImage('assets/images/fast.png'),
                ),
                SizedBox(width: 7.w),
                Text(
                  'Delivery Methods',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                  ),
                ),
              ],
            ),
            SizedBox(height: 21.h),
            Container(
              height: 90.h,
              width: double.infinity,
              // color: Colors.red,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 25.w),
                    child: Image(
                      width: 90.w,
                      height: 90.h,
                      image: AssetImage(
                        catagories[index]['image'],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 26.h),
            Row(
              children: [
                Image(
                  image: AssetImage(
                    'assets/images/wallet.png',
                  ),
                  height: 40.h,
                  width: 40.w,
                ),
                SizedBox(width: 11.w),
                Text(
                  'Payments Methods',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                  ),
                ),
              ],
            ),
            SizedBox(height: 21.h),
            Row(
              children: [
                Image(
                  image:
                      AssetImage('assets/images/58482354cef1014c0b5e49c0.png'),
                  height: 40.h,
                  width: 40.w,
                ),
                SizedBox(width: 15.w),
                Text(
                  '**** **** **** **45',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Text(
                  'Change',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Color(0xff2D6A4F),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('Gesture arrow buttons');
                  },
                  child: Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: Color(0xff2D6A4F),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
