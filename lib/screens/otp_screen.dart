import 'package:fashion_hub/screens/bottom_nav_bar.dart';
import 'package:fashion_hub/widgets/container_demo.dart';
import 'package:fashion_hub/widgets/text_16.dart';
import 'package:fashion_hub/widgets/text_18_bold.dart';
import 'package:fashion_hub/widgets/text_20_bold.dart';
import 'package:fashion_hub/widgets/text_26.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OtpScreen extends StatefulWidget {
  final title1;
  final title2;
  final dynamic? number;

  const OtpScreen({Key? key, this.title1, this.title2, required this.number})
      : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    // final routes =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    //
    // final args = ModalRoute.of(context)!.settings.arguments as ModelPassData;
    // print("---------------${args.text1}");
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 300.81.h,
                width: 630.32.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/number2-png.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 20.w,
                top: 84.h,
                child: Text26White(text: "Verification"),
              ),
              Positioned(
                left: 20.w,
                top: 120.h,
                child: Text26White(text: "Code?"),
              ),
              Positioned(
                bottom: 0.h,
                left: 20.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text16(text: "Please enter Code sent to"),
                    Row(
                      children: [
                        Text18Bold(text: widget.number),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 61.6.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.w),
            child: OTPTextField(
              length: 4,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 50.w,
              style: TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(height: 299.h),
          GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNavBar(),
                  ),
                );
              },
              child: ContainerDemo(text: "Continue")),
          SizedBox(height: 25.h),
          Text20Bold(
            text: "Resend Code",
            color: Color(0xff2D6A4F),
          ),
        ],
      ),
    );
  }
}
