import 'package:fashion_hub/screens/bottom_nav_bar.dart';
import 'package:fashion_hub/screens/home_screen.dart';
import 'package:fashion_hub/screens/number_screen.dart';
import 'package:fashion_hub/screens/on_boarding1.dart';
import 'package:fashion_hub/screens/otp_screen.dart';
import 'package:fashion_hub/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_) => GetMaterialApp(
        initialRoute: "/",
        routes: {
          "/": (context) => SplashScreen(),
          "/OnBoarding": (context) => OnBoarding1(),
          "/NumberScreen": (context) => NumberScreen(),
          "/OtpScreen": (context) => OtpScreen(
                number: '',
              ),
          "/BottomNavBar": (context) => BottomNavBar(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
      ),
      designSize: Size(390, 844),
    );
  }
}
