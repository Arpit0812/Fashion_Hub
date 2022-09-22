import 'package:fashion_hub/screens/bottom_nav_bar.dart';
import 'package:fashion_hub/screens/check_out_screen.dart';
import 'package:fashion_hub/widgets/text_16.dart';
import 'package:fashion_hub/widgets/text_20_bold.dart';
import 'package:fashion_hub/widgets/top_container_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/svg.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        height: 130.h,
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
            children: [
              SizedBox(height: 15.h),
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
                  'Check Out',
                  style: TextStyle(fontSize: 20.sp, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckOutScreen(),
                    ),
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
            text: "Cart",
            color: Colors.white,
          ),
          third: Image.asset(
            "assets/images/dustbin.png",
            height: 25.h,
            width: 25.w,
          ),
        ),
        preferredSize: Size.fromHeight(100.h),
      ),
      body: Column(
        children: [
          Container(
            height: screenSize.height * 0.4,
            width: screenSize.width,
            // color: Colors.red,
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Container(
                  height: screenSize.height * 0.2,
                  width: screenSize.width,
                  margin: EdgeInsets.symmetric(vertical: 2),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        child: Image(
                          image: AssetImage('assets/images/girls3.png'),
                        ),
                        height: screenSize.height * 0.15,
                        width: screenSize.width * 0.3,
                      ),
                      SizedBox(width: screenSize.width * 0.08),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AsTyLiSh Women Open Front\nLong Sleeve Chunky Knit\nCardigan',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '\$69.99',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: screenSize.width * 0.1),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: screenSize.height * 0.04,
                            width: screenSize.width * 0.08,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),
                            child: InkWell(
                              child: Icon(Icons.add),
                              onTap: () {
                                setState(() {
                                  counter++;
                                });
                              },
                            ),
                          ),
                          Text('$counter'),
                          Container(
                            height: screenSize.height * 0.04,
                            width: screenSize.width * 0.08,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),
                            child: InkWell(
                              child: Icon(Icons.remove),
                              onTap: () {
                                setState(() {
                                  if (counter > 1) {
                                    counter--;
                                  }
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
