import 'package:fashion_hub/screens/product_screen.dart';
import 'package:fashion_hub/widgets/Text14_reg.dart';
import 'package:fashion_hub/widgets/text14_bold.dart';
import 'package:fashion_hub/widgets/text_13.dart';
import 'package:fashion_hub/widgets/text_16_rag.dart';
import 'package:fashion_hub/widgets/text_18_bold.dart';
import 'package:fashion_hub/widgets/text_20_bold.dart';
import 'package:fashion_hub/widgets/text_24_white.dart';
import 'package:fashion_hub/widgets/top_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _controller = PageController(initialPage: 0);
  final _drawer = GlobalKey<ScaffoldState>();

  int pageSelected = 0;

  List<String> catalogue = [
    "assets/images/wc.png",
    "assets/images/mf.png",
    "assets/images/pf.png",
    "assets/images/cf.png"
  ];

  List<String> category1 = ["Women's", "Men's", "Phones", "Computers"];

  List<String> category2 = ["Fashion", "Fashion", "", ""];

  List<String> featuredImage = [
    "assets/images/fea1.png",
    "assets/images/fea2.png",
    "assets/images/fea1.png",
    "assets/images/fea2.png"
  ];

  List<String> price = ["\$49", "\$69", "\$49", "\$69"];

  List<String> info = [
    "Home",
    "Shop by Category",
    "Your Orders",
    "Your Wish List",
    "Settings",
    "Log Out"
  ];

  List<String> infoIcon = [
    "assets/images/home-color.svg",
    "assets/images/mebu-color.svg",
    "assets/images/cart-colors.svg",
    "assets/images/heart.svg",
    "assets/images/settings.svg",
    "assets/images/exit.svg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawer,
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: TopContainer(
          first: GestureDetector(
            onTap: () {
              _drawer.currentState!.openDrawer();
            },
            child: SvgPicture.asset(
              "assets/images/menu.svg",
              height: 18.h,
              width: 20.w,
            ),
          ),
          second: SvgPicture.asset(
            "assets/images/fashion_hub.svg",
            height: 35.h,
            width: 140.w,
          ),
          third: SvgPicture.asset(
            "assets/images/notification.svg",
            height: 22.76.h,
            width: 20.w,
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 160.31.h,
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
                    padding: EdgeInsets.symmetric(horizontal: 27.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 37.h,
                        ),
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
                        SizedBox(
                          height: 8.h,
                        ),
                        Text24White(
                          text: "Oleh ChaBaNov",
                          size: 18.sp,
                        ),
                        Text24White(
                          text: "+91 123 456 7890",
                          size: 12.sp,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10.h,
                  right: 35.w,
                  child: Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: const BoxDecoration(
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
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: List.generate(
                  info.length,
                  (index) => GestureDetector(
                    onTap: () {
                      if (index == 1) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavBar(
                              index: 1,
                            ),
                          ),
                        );
                      }
                    },
                    child: Container(
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
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.w),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 45.h),
              Stack(
                children: [
                  SizedBox(
                    height: 150.h,
                    child: PageView.builder(
                      controller: _controller,
                      onPageChanged: (value) {
                        setState(
                          () {
                            pageSelected = value;
                          },
                        );
                      },
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.w),
                          height: 150.h,
                          width: 350.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/page-png.png"),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 5.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10.h),
                                Text24White(text: "Fashion Sale"),
                                Row(
                                  children: [
                                    Text24White(
                                      text: "See More",
                                      size: 14.sp,
                                    ),
                                    SizedBox(width: 10.w),
                                    Icon(
                                      (Icons.arrow_forward_ios_outlined),
                                      color: Colors.white,
                                      size: 14.sp,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 19.4.h,
                    left: 148.5.w,
                    child: Row(
                      children: List.generate(
                        4,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              pageSelected = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 3.5.w),
                            height: 8.h,
                            width: 8.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: pageSelected == index
                                  ? Color(0xff40916C)
                                  : Color(0xffB7E4C7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text20Bold(text: "Catalogue"),
                    Row(
                      children: [
                        Text16Grey(
                          text: "See All",
                          size: 14.sp,
                        ),
                        SizedBox(width: 12.w),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 14.sp,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              SizedBox(
                height: 100.h,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 100.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10.r),
                        image: DecorationImage(
                            image: AssetImage(catalogue[index]),
                            fit: BoxFit.cover),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text24White(
                            text: category1[index],
                            size: 14.sp,
                          ),
                          Text24White(
                            text: category2[index],
                            size: 14.sp,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.w, top: 20.h),
                child: Text18Bold(text: "Featured"),
              ),
              SizedBox(
                height: 520.h,
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: GridView.builder(
                      itemCount: 4,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20.h,
                          crossAxisSpacing: 10.w,
                          childAspectRatio: 1 / 1.35),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductScreen(
                                  image: featuredImage[index],
                                  price: price[index],
                                ),
                              ),
                            );
                          },
                          child: Card(
                            elevation: 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      height: 155.h,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1),
                                        ],
                                        image: DecorationImage(
                                            image: AssetImage(
                                                featuredImage[index]),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: -12.5.h,
                                      right: 12.5.w,
                                      child: Container(
                                        height: 25.h,
                                        width: 25.w,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 3),
                                          ],
                                        ),
                                        child: Center(
                                          child: SvgPicture.asset(
                                            "assets/images/heart.svg",
                                            height: 10.h,
                                            width: 12.w,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Row(
                                  children: List.generate(
                                    5,
                                    (index) => Icon(
                                      Icons.star,
                                      color: const Color(0xffFFC107),
                                      size: 10.sp,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Text13(
                                  text: "Style WoMens  ",
                                ),
                                Text13(
                                  text: "Turtleneck OverSized...",
                                ),
                                // Text14Bold(text: "\$49")
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text14Bold(text: price[index]),
                                SizedBox(
                                  width: 9.w,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
