import 'package:fashion_hub/screens/cart_screen.dart';
import 'package:fashion_hub/screens/category_screen.dart';
import 'package:fashion_hub/screens/favourite_screen.dart';
import 'package:fashion_hub/screens/home_screen.dart';
import 'package:fashion_hub/screens/profle_screen.dart';
import 'package:fashion_hub/widgets/text_10_bold_white.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatefulWidget {
  final int? index;

  const BottomNavBar({Key? key, this.index}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<String> iconList = [
    "assets/images/home.svg",
    "assets/images/category.svg",
    "assets/images/favourite.svg",
    "assets/images/profile.svg"
  ];

  List<String> outLineIcon = [
    "assets/images/home_o.svg",
    "assets/images/category_o.svg",
    "assets/images/favourite_o.svg",
    "assets/images/profile_o.svg"
  ];
  List<Widget> screens = [
    HomeScreen(),
    CategoryScreen(),
    FavouriteScreen(),
    ProfileScreen()
  ];

  int pageSelected = 0;

  List<String> title = ["Home", "Categories", "Favorite", "Profile"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[pageSelected],
      bottomNavigationBar: WillPopScope(
        onWillPop: () async {
          return await showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Text('Do you want to exit an App?'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.h),
                ),
                title: Text('Exit App'),
                actions: [
                  MaterialButton(
                    color: Color(0xff2D6A4F),
                    minWidth: 80.w,
                    height: 50.h,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.h),
                    ),
                    onPressed: () {
                      Navigator.pop(context, true);
                    },
                    child: Text(
                      'Yes',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  MaterialButton(
                    color: Color(0xff2D6A4F),
                    minWidth: 80.w,
                    height: 50.h,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.h),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'No',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              );
            },
          );
        },
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 74.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 5,
                      spreadRadius: 1)
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                ),
              ),
              child: Row(
                children: List.generate(
                  iconList.length,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        pageSelected = index;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 12.h, left: 20.w),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 5.h),
                            child: pageSelected == index
                                ? SvgPicture.asset(
                                    iconList[index],
                                    height: 20.h,
                                    width: 20.w,
                                  )
                                : SvgPicture.asset(
                                    outLineIcon[index],
                                    height: 20.h,
                                    width: 20.w,
                                  ),
                          ),
                          Text(
                            title[index],
                            style: pageSelected == index
                                ? TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff1B4332),
                                    fontSize: 12.sp)
                                : TextStyle(fontSize: 11.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: -15.h,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 49.h,
                  width: 110.w,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff2D6A4F),
                        Color(0xff95D5B2),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(48.r),
                      bottomLeft: Radius.circular(48.r),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 15.w),
                      SvgPicture.asset(
                        "assets/images/shopping-cart.svg",
                        height: 25.h,
                        width: 25.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 11.h, left: 10.5.w),
                        child: Column(
                          children: [
                            Text10BoldWhite(text: "\$199.89"),
                            Text10BoldWhite(text: "2 items"),
                          ],
                        ),
                      )
                    ],
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
