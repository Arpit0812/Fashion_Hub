import 'package:fashion_hub/widgets/Text14_reg.dart';
import 'package:fashion_hub/widgets/text_16.dart';
import 'package:fashion_hub/widgets/top_container_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/svg.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  double start = 0.0;
  double end = 5000.0;

  String dropdownValue = "Dress";

  List<String> dropdownItems = ["Dress", "Women", "Men", "Children", "Toy"];

  String dropdownValue2 = "Lark & Ro, AstYlIsh, ECOWISH, AngaShion";

  List<Color> colors = [
    Colors.black,
    Colors.red,
    Colors.green,
    Colors.indigo,
    Colors.purple,
    Colors.yellow,
    Colors.blue,
  ];

  List<String> dropdownItems2 = [
    "Lark & Ro, Astyish, ECOWISH, AngaShion",
    "Men",
    "Children",
    "Toy"
  ];

  String dropdownValue3 = "Featured";

  List<String> dropdownItems3 = ["Featured", "Women", "Men", "Children", "Toy"];

  int circleDemo = 0;

  int sizeSelected = 0;

  List<String> sizeX = ["XXS", "XS", "X", "M", "L", "XL"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      appBar: PreferredSize(
        child: TopContainer2(
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
            "assets/images/filter_title.svg",
            height: 28.h,
            width: 52.w,
          ),
          third: Image.asset(
            "assets/images/dustbin.png",
            height: 25.h,
            width: 25.w,
          ),
        ),
        preferredSize: Size.fromHeight(100.h),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Text16(text: "Price"),
              RangeSlider(
                activeColor: Color(0xffE7B844),
                inactiveColor: Colors.grey.shade400,
                values: RangeValues(start, end),
                labels: RangeLabels(start.toString(), end.toString()),
                onChanged: (value) {
                  setState(
                    () {
                      start = value.start;
                      end = value.end;
                    },
                  );
                },
                min: 0.0,
                max: 5000.0,
              ),
              Container(
                height: 40.h,
                width: 350.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text16(text: "\$ ${start.toStringAsFixed(0)}"),
                    const VerticalDivider(
                      width: 1,
                      color: Colors.grey,
                    ),
                    Text16(text: "\$ ${end.toStringAsFixed(0)}"),
                  ],
                ),
              ),
              SizedBox(height: 25.h),
              Text16(text: "Categories"),
              SizedBox(height: 15.h),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: Colors.grey),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropdownButton(
                        borderRadius: BorderRadius.circular(8.r),

                        dropdownColor: Colors.white,

                        iconDisabledColor: Colors.transparent,
                        iconEnabledColor: Colors.transparent,

                        underline: Container(),
                        // Initial Value
                        hint: const Text("Choose Country"),
                        value: dropdownValue,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: dropdownItems.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Row(
                              children: [
                                Text(
                                  items,
                                  style: TextStyle(fontSize: 14.sp),
                                ),
                                SizedBox(
                                  width: 200,
                                )
                              ],
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15.sp,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25.h),
              Text16(text: "Brand"),
              SizedBox(height: 15.h),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: Colors.grey)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropdownButton(
                        borderRadius: BorderRadius.circular(8.r),

                        dropdownColor: Colors.white,

                        iconDisabledColor: Colors.transparent,
                        iconEnabledColor: Colors.transparent,

                        underline: Container(),
                        // Initial Value

                        value: dropdownValue2,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: dropdownItems2.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Row(
                              children: [
                                Text(
                                  items,
                                  style: TextStyle(fontSize: 14.sp),
                                ),
                                SizedBox(
                                  width: 0,
                                )
                              ],
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue2 = newValue!;
                          });
                        },
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15.sp,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25.h),
              Text16(text: "Colors"),
              SizedBox(height: 17.h),
              Row(
                children: List.generate(
                  7,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        circleDemo = index;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7.5.w),
                      child: circleDemo == index
                          ? CircleAvatar(
                              radius: 19.r,
                              backgroundColor: Color(0xffE7B844),
                              child: CircleAvatar(
                                radius: 17.r,
                                backgroundColor: Color(0xffF6F6F6),
                                child: CircleAvatar(
                                  radius: 15.r,
                                  backgroundColor: colors[index],
                                ),
                              ),
                            )
                          : CircleAvatar(
                              radius: 19.r,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 17.r,
                                backgroundColor: Color(0xffF6F6F6),
                                child: CircleAvatar(
                                  radius: 15.r,
                                  backgroundColor: colors[index],
                                ),
                              ),
                            ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25.h),
              Text16(text: "Size"),
              SizedBox(height: 13.h),
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
              SizedBox(height: 25.h),
              Text16(text: "Sorted by"),
              SizedBox(height: 17.h),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: Colors.grey),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropdownButton(
                        borderRadius: BorderRadius.circular(8.r),

                        dropdownColor: Colors.white,

                        iconDisabledColor: Colors.transparent,
                        iconEnabledColor: Colors.transparent,

                        underline: Container(),
                        // Initial Value
                        hint: const Text("Choose Country"),
                        value: dropdownValue3,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: dropdownItems3.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Row(
                              children: [
                                Text(
                                  items,
                                  style: TextStyle(fontSize: 14.sp),
                                ),
                                SizedBox(
                                  width: 200,
                                )
                              ],
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue3 = newValue!;
                          });
                        },
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15.sp,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25.h),
              MaterialButton(
                minWidth: 350.w,
                height: 40.h,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                color: Color(0xff95D5B2),
                child: Text(
                  'Results (186)',
                  style: TextStyle(fontSize: 20.sp, color: Colors.white),
                ),
                onPressed: () {},
              ),
              SizedBox(height: 25.h),
            ],
          ),
        ),
      ),
    );
  }
}
