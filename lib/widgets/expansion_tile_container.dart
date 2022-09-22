import 'package:fashion_hub/widgets/text_16.dart';
import 'package:fashion_hub/widgets/text_16_rag.dart';
import 'package:fashion_hub/widgets/text_20_bold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/svg.dart';

class ExpansionTileDemo extends StatefulWidget {
  const ExpansionTileDemo({Key? key, required this.expandEx}) : super(key: key);
  final expandEx;
  @override
  State<ExpansionTileDemo> createState() => _ExpansionTileDemoState();
}

class _ExpansionTileDemoState extends State<ExpansionTileDemo> {
  bool expand = false;
  bool expand1 = false;

  List<String> categoryEx = [
    "Westernwear",
    "Ethnic & Fusionwear",
    "Footwear",
    "Lingerie",
    "Bags, Wallets & Cluthes",
    "Jewellery",
    "Other Accessories",
    "Beauty & Personal Care",
    "Sports & Activewear",
    "Luggage & Trolleys",
    "Sleepwear & Longewear",
    "Watches",
    "Winterwear Store",
    "Gift Card",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffB7E4C7),
      child: ExpansionTile(
        onExpansionChanged: (value) {
          setState(() {
            expand = value;
          });
        },
        title: Padding(
          padding: EdgeInsets.only(top: 25.h, left: 10.w),
          child: Row(
            children: [
              Text20Bold(text: "WOMEN"),
              expand == false
                  ? Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey.shade700,
                    )
                  : Icon(Icons.keyboard_arrow_up_outlined)
            ],
          ),
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(bottom: 0.h),
          child: Column(
            children: [
              Text16Grey(
                text: "Top & Tees, Kurtas & Suits... ",
                size: 10.sp,
              ),
              SizedBox(
                height: 30.h,
              ),
              expand == true
                  ? SvgPicture.asset(
                      "assets/images/expa=triangle.svg",
                      height: 10.h,
                      width: 15.w,
                    )
                  : Text(""),
            ],
          ),
        ),
        trailing: Container(
          height: 115.h,
          width: 195.w,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/cat-1.png"),
                fit: BoxFit.cover),
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
                  padding:
                      EdgeInsets.symmetric(vertical: 6.5.h, horizontal: 20.w),
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
        ],
      ),
    );
  }
}
