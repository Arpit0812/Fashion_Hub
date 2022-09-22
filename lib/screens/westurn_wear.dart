import 'package:fashion_hub/screens/filter_screen.dart';
import 'package:fashion_hub/screens/product_screen.dart';
import 'package:fashion_hub/widgets/Text14_reg.dart';
import 'package:fashion_hub/widgets/text12_bold.dart';
import 'package:fashion_hub/widgets/text14_bold.dart';
import 'package:fashion_hub/widgets/text_13.dart';
import 'package:fashion_hub/widgets/text_16_rag.dart';
import 'package:fashion_hub/widgets/text_18_bold.dart';
import 'package:fashion_hub/widgets/top_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/svg.dart';

class WesternWear extends StatefulWidget {
  const WesternWear({Key? key}) : super(key: key);

  @override
  State<WesternWear> createState() => _WesternWearState();
}

class _WesternWearState extends State<WesternWear> {
  List<String> allCat = ["All", "Dresses", "Tops", "Sweater", "Jeans"];

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
        child: TopContainer(
          first: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(
              "assets/images/left-arrow.svg",
              height: 16.67.h,
              width: 20.w,
            ),
          ),
          second: SvgPicture.asset(
            "assets/images/westurn.svg",
            height: 28.h,
            width: 114.w,
          ),
          third: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FilterScreen(),
                ),
              );
            },
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FilterScreen(),
                  ),
                );
              },
              child: SvgPicture.asset(
                "assets/images/filter.svg",
                height: 18.h,
                width: 18.w,
              ),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(130.h),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 48.h,
          ),
          SizedBox(
            height: 30.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.w),
                    decoration: BoxDecoration(
                      color: isSelected == index
                          ? Color(0xff95D5B2)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(20.r),
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 1),
                      ],
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                      child: Center(
                        child: Text14Reg(text: allCat[index]),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text18Bold(text: "108 Items"),
                Row(
                  children: [
                    Text16Grey(
                      text: "Sort By : ",
                      size: 12.sp,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FilterScreen(),
                            ),
                          );
                        },
                        child: Text12Bold(text: "Featured")),
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
