import 'package:country_code_picker/country_code_picker.dart';
import 'package:fashion_hub/screens/bottom_nav_bar.dart';
import 'package:fashion_hub/screens/otp_screen.dart';
import 'package:fashion_hub/widgets/container_demo.dart';
import 'package:fashion_hub/widgets/text_16.dart';
import 'package:fashion_hub/widgets/text_20_bold.dart';
import 'package:fashion_hub/widgets/text_26.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class NumberScreen extends StatefulWidget {
  const NumberScreen({Key? key}) : super(key: key);

  @override
  State<NumberScreen> createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  CountryCode? country_code;
  String? number1;
  final phoneController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: formKey,
        child: Column(
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
                    child: Text26White(text: "What is Your Phone")),
                Positioned(
                  left: 20.w,
                  top: 120.h,
                  child: Text26White(text: "Number?"),
                ),
                Positioned(
                  bottom: 10.h,
                  left: 20.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text16(text: "Please enter your phone number to"),
                      Text16(text: "verify your account"),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 61.6.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                height: 70.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15.sp),
                ),
                child: Row(
                  children: [
                    CountryCodePicker(
                      onChanged: (value) {
                        setState(() {
                          country_code = value;
                          print('CODE: $country_code');
                        });
                      },
                      initialSelection: 'IN',
                      favorite: ['+1', 'CN'],
                      showCountryOnly: true,
                      showFlag: true,
                      showOnlyCountryWhenClosed: false,
                      alignLeft: false,
                    ),
                    Container(
                      height: 39.h,
                      width: 1.w,
                      color: Colors.grey,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: phoneController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter The mobile number';
                          } else if (value.length < 10) {
                            return 'Please enter the 10 number';
                          }
                          return null;
                        },
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          counterText: '',
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 15.h),
                          focusedBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          hintText: 'Enter the Number',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 299.h),
            GestureDetector(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OtpScreen(
                        title1: "$country_code",
                        title2: "$number1",
                        number: phoneController.text,
                      ),
                    ),
                  );
                }
                // arguments: {"title1": "$country_code", "title2": "$number1"},
              },
              child: ContainerDemo(text: "Send Verification Code"),
            ),
            SizedBox(height: 25.h),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavBar(),
                    ));
              },
              child: Text20Bold(
                text: "Skip",
                color: Color(0xff2D6A4F),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
