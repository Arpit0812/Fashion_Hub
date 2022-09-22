import 'package:fashion_hub/screens/bottom_nav_bar.dart';
import 'package:fashion_hub/screens/product_screen.dart';
import 'package:fashion_hub/widgets/text12_bold.dart';
import 'package:fashion_hub/widgets/text14_bold.dart';
import 'package:fashion_hub/widgets/text_13.dart';
import 'package:fashion_hub/widgets/text_16_rag.dart';
import 'package:fashion_hub/widgets/text_18_bold.dart';
import 'package:fashion_hub/widgets/text_20_bold.dart';
import 'package:fashion_hub/widgets/top_container_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/svg.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  int isSelected = 0;

  List<String> featuredImage = [
    "assets/images/fea1.png",
    "assets/images/fea2.png",
    "assets/images/fea1.png",
    "assets/images/fea2.png",
    "assets/images/fea2.png",
    "assets/images/fea2.png",
  ];
  List<String> price = ["\$49", "\$69", "\$49", "\$69", "\$49", "\$49"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: TopContainer2(
          first: InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNavBar(),
                  ));
            },
            child: SvgPicture.asset(
              "assets/images/left-arrow.svg",
              height: 16.67.h,
              width: 20.w,
            ),
          ),
          second: Text20Bold(
            text: "Favorite",
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
      body: Column(
        children: [
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text18Bold(text: "6 Items"),
                Row(
                  children: [
                    Text16Grey(
                      text: "Sort By : ",
                      size: 12.sp,
                    ),
                    Text12Bold(text: "Price : lowest to high"),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      size: 18.sp,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: GridView.builder(
                itemCount: featuredImage.length,
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
                                  borderRadius: BorderRadius.circular(8.r),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey, blurRadius: 1),
                                  ],
                                  image: DecorationImage(
                                      image: AssetImage(featuredImage[index]),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Positioned(
                                bottom: -12.5.h,
                                right: 12.5.w,
                                child: Container(
                                  height: 25.h,
                                  width: 25.w,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey, blurRadius: 3),
                                    ],
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.favorite,
                                      color: Color(0xffE7B844),
                                      size: 12.sp,
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
                                color: Color(0xffFFC107),
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
                          Row(
                            children: [
                              Text14Bold(text: price[index]),
                              SizedBox(
                                width: 9.w,
                              ),
                              Text16Grey(
                                text: "\$99",
                                size: 10.sp,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
