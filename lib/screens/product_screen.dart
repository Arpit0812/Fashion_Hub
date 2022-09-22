
import 'package:fashion_hub/widgets/Text14_reg.dart';
import 'package:fashion_hub/widgets/container_2pay_demo.dart';
import 'package:fashion_hub/widgets/text14_bold.dart';
import 'package:fashion_hub/widgets/text_13.dart';
import 'package:fashion_hub/widgets/text_16.dart';
import 'package:fashion_hub/widgets/text_16_rag.dart';
import 'package:fashion_hub/widgets/text_18_bold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/svg.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen(
      {Key? key, this.image, this.title, this.subTitle, this.price})
      : super(key: key);
  final image;
  final title;
  final subTitle;
  final price;
  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  PageController pageController = PageController(initialPage: 0);
  int selected = 0;
  int colorListSelect = 0;

  int sizeSelected = 0;
  int selector = 0;
  bool isFav = false;

  List<String> sizeX = ["XXS", "XS", "X", "M", "L", "XL"];
  List<String> featuredImage = [
    "assets/images/fea1.png",
    "assets/images/fea2.png",
  ];

  List<String> price = ["\$49", "\$69"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 110.h,
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
          padding: EdgeInsets.symmetric(horizontal: 45.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  "assets/images/left-arrow.svg",
                  height: 16.67.h,
                  width: 20.w,
                  color: Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: ContainerDemo2(
                  text: "Add to Cart",
                  width: 200.w,
                ),
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      isFav = !isFav;
                    });
                  },
                  child: isFav == true
                      ? Icon(
                          Icons.favorite_border,
                          color: Color(0xff2D6A4F),
                          size: 25.sp,
                        )
                      : Icon(
                          Icons.favorite,
                          size: 25.sp,
                          color: Color(0xff2D6A4F),
                        ))
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Container(
                  height: 270.h,
                  width: double.infinity,
                  // color: Colors.red,
                  child: PageView(
                    onPageChanged: (value) {
                      setState(() {
                        selector = value;
                      });
                    },
                    controller: pageController,
                    children: [
                      Image(
                        image: AssetImage(
                            'assets/images/136-1360562_woman-shopping-girl-shopping-png-png-fashion-dresses.png'),
                      ),
                      Image(
                        image: AssetImage('assets/images/s2.png'),
                      ),
                      Image(
                        image: AssetImage('assets/images/s3.png'),
                      ),
                      Image(
                        image: AssetImage('assets/images/s4.png'),
                      ),
                      Image(
                        image: AssetImage('assets/images/s5.png'),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => Padding(
                    padding: const EdgeInsets.all(4),
                    child: Container(
                      height: selector == index ? 12 : 10,
                      width: selector == index ? 12 : 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: selector == index
                              ? Color(0xff2D6A4F)
                              : Color(0xff95D5B2)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                height: 202.h,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 7.h),
                      Text16(text: "Colors"),
                      SizedBox(height: 15.h),
                      Row(
                        children: List.generate(
                          6,
                          (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                colorListSelect = index;
                              });
                            },
                            child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 8.5.w),
                                height: 40.h,
                                width: 40.w,
                                decoration: colorListSelect == index
                                    ? BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/product_1.png"),
                                          fit: BoxFit.cover,
                                        ),
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        border: Border.all(
                                          color: Color(0xffE7B844),
                                        ),
                                      )
                                    : BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/product_1.png"),
                                          fit: BoxFit.cover,
                                        ),
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1),
                                        ],
                                      )),
                          ),
                        ),
                      ),
                      SizedBox(height: 25.h),
                      Text16(text: "Size"),
                      SizedBox(height: 15.h),
                      Row(
                        children: List.generate(
                          6,
                          (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                sizeSelected = index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10.w),
                              height: 40.h,
                              width: 40.h,
                              decoration: BoxDecoration(
                                color: sizeSelected == index
                                    ? Color(0xff95D5B2)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(8.r),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 1,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: sizeSelected == index
                                    ? Text14Reg(
                                        text: sizeX[index],
                                        color: Colors.white,
                                      )
                                    : Text14Reg(
                                        text: sizeX[index],
                                        color: Colors.black,
                                      ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Container(
                height: 165.h,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.h),
                      Text18Bold(text: "Product Details"),
                      SizedBox(height: 8.h),
                      Wrap(
                        children: [
                          Text14Reg(
                              text:
                                  "Women's Casual V-Neck Pullover Sweater long Sleeved Sweater Top with high low Hemline is going to be the newest step in your wardrobe! Living up to its namesake, this sweater is unbelievably soft, ...")
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 196.h,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text18Bold(text: "Reviews"),
                          Row(
                            children: [
                              Text14Reg(text: "See All"),
                              SizedBox(
                                width: 8.w,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 15.sp,
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Text14Reg(text: "DiPika Patel"),
                      SizedBox(height: 8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Row(
                                children: List.generate(
                                  5,
                                  (index) => Icon(
                                    Icons.star,
                                    color: Color(0xffFFC107),
                                    size: 12.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text14Reg(text: "June 1, 2020"),
                        ],
                      ),
                      SizedBox(height: 19.5.h),
                      Wrap(
                        children: [
                          Text14Reg(
                              text:
                                  " Soft and comfortable material, fitting is very nice, length is between a crop and normal sweatshirt. perfect sweatshirt also the colour is very classy and most imp it is same as shown in the picture.")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 312.99.h,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.h),
                      Text18Bold(text: "View Similar"),
                      SizedBox(height: 8.h),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(),
                          child: GridView.builder(
                            itemCount: featuredImage.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 20.h,
                                    crossAxisSpacing: 10.w,
                                    childAspectRatio: 1 / 1.35),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ProductScreen(
                                          image: featuredImage[index],
                                          price: price[index],
                                        ),
                                      ));
                                },
                                child: Card(
                                  elevation: 0,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                              boxShadow: [
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
                                              decoration: BoxDecoration(
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
                                          Text14Bold(text: widget.price),
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
                ),
              ),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
