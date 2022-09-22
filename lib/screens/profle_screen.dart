import 'package:fashion_hub/widgets/Text14_reg.dart';
import 'package:fashion_hub/widgets/text_24_white.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key, this.number}) : super(key: key);
  final number;
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String> info = [
    "Shipping Addresses",
    "Payments Methods",
    "Orders",
    "Favorite",
    "Settings",
    "Log Out"
  ];

  List<String> infoIcon = [
    "assets/images/placeholder.svg",
    "assets/images/wallet.svg",
    "assets/images/clipboard.svg",
    "assets/images/heart.svg",
    "assets/images/settings.svg",
    "assets/images/exit.svg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Stack(
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
                  bottomRight: Radius.circular(200.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 32.h, left: 25.w),
                child: Row(
                  children: [
                    Container(
                      height: 60.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/profile.png"),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                        color: Colors.black,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text24White(
                          text: "Oleh ChaBaNov",
                          size: 18.sp,
                        ),
                        Text24White(
                          text: "+91 123 456 7890",
                          size: 12.sp,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10.h,
              right: 20.w,
              child: Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(color: Colors.grey, blurRadius: 2),
                  ],
                ),
                child: Center(
                  child: SvgPicture.asset(
                    "assets/images/pencil.svg",
                    height: 18.h,
                    width: 18.h,
                  ),
                ),
              ),
            )
          ],
        ),
        preferredSize: Size.fromHeight(130.11.h),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            Column(
              children: List.generate(
                6,
                (index) => Container(
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  height: 50.h,
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
                    padding: EdgeInsets.only(left: 15.w),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          infoIcon[index],
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Text14Reg(text: info[index]),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
