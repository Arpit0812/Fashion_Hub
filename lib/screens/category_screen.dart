import 'package:fashion_hub/model/category_model.dart';
import 'package:fashion_hub/screens/bottom_nav_bar.dart';
import 'package:fashion_hub/screens/westurn_wear.dart';
import 'package:fashion_hub/widgets/text_16.dart';
import 'package:fashion_hub/widgets/text_16_rag.dart';
import 'package:fashion_hub/widgets/text_20_bold.dart';
import 'package:fashion_hub/widgets/top_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/svg.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<String> categoryEx = [
    "WesternWear",
    "Ethnic & FusionWear",
    "Footwear",
    "Lingerie",
    "Bags, Wallets & CluThEs",
    "Jewellery",
    "Other Accessories",
    "Beauty & Personal Care",
    "Sports & Activewear",
    "Luggage & Trolleys",
    "Sleepwear & LoNgeWear",
    "Watches",
    "WinterWear Store",
    "Gift Card",
  ];

  List<CategoryModel> categoryList = [
    CategoryModel(
        title: "WOMEN",
        subTitle: "Top & Tees, KurTas & Suits... ",
        image: "assets/images/cat-1.png",
        arrow: false),
    CategoryModel(
        title: "MEN",
        subTitle: "T-Shirts, Shirts, Jeans, Shoes... ",
        image: "assets/images/cat-2.png",
        arrow: false),
    CategoryModel(
        title: "Kids",
        subTitle: "Clothing, Footwear, Brands..",
        image: "assets/images/cat-3.png",
        arrow: false),
    CategoryModel(
        title: "HOME & KITCHEN",
        subTitle: "Sofa, Bedsheets, Cushion... ",
        image: "assets/images/cat-4.png",
        arrow: false),
    CategoryModel(
        title: "BEAUTY",
        subTitle: "Makeup, Fragrances, Groom...",
        image: "assets/images/cat-5.png",
        arrow: false),
    CategoryModel(
        title: "GADGETS",
        subTitle: "Head phones, Mobile covers...",
        image: "assets/images/cat-6.png",
        arrow: false),
  ];

  bool expand = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: TopContainer(
          first: InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomNavBar(),
                ),
              );
            },
            child: SvgPicture.asset(
              "assets/images/left-arrow.svg",
              height: 16.67.h,
              width: 20.w,
            ),
          ),
          second: SvgPicture.asset(
            "assets/images/cat-title.svg",
            height: 28.h,
            width: 114.w,
          ),
          third: SvgPicture.asset(
            "assets/images/left-arrow.svg",
            color: Colors.transparent,
            height: 22.76.h,
            width: 20.w,
          ),
        ),
        preferredSize: Size.fromHeight(130.h),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 49.h),
          child: Column(
              children: List.generate(
            categoryList.length,
            (index) => Container(
              margin: EdgeInsets.only(bottom: 10.h),
              color: Color(0xffB7E4C7),
              child: ExpansionTile(
                onExpansionChanged: (value) {
                  setState(() {
                    categoryList[index].arrow = value;
                  });
                },
                title: Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text20Bold(text: "${categoryList[index].title}"),
                          categoryList[index].arrow == true
                              ? Icon(Icons.keyboard_arrow_up_outlined)
                              : Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.grey.shade700,
                                ),
                        ],
                      ),
                    ],
                  ),
                ),
                trailing: Container(
                  height: 80,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("${categoryList[index].image}"),
                        fit: BoxFit.cover),
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(right: 90.w, top: 10.h),
                  child: Column(
                    children: [
                      Text16Grey(
                        text: "${categoryList[index].subTitle}",
                        size: 10.sp,
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      categoryList[index].arrow == true
                          ? SvgPicture.asset(
                              "assets/images/exPa=triangle.svg",
                              height: 10.h,
                              width: 15.w,
                            )
                          : Text(""),
                    ],
                  ),
                ),
                children: [
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: List.generate(
                        categoryEx.length,
                        (index) => Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 6.5.h, horizontal: 20.w),
                          child: InkWell(
                            onTap: () {
                              if (index == 0) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => WesternWear(),
                                  ),
                                );
                              }
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text16(text: categoryEx[index]),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 12.sp,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}
