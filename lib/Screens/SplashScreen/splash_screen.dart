import 'dart:async';
// import 'package:flutter_avif/flutter_avif.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:navigo_app/Screens/HomePage/home.dart';
import 'package:navigo_app/Screens/WelcomeScreen/welcom_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      bool isLogin = await prefs.getBool('isLogin') ?? false;

      if (isLogin) {
        Get.off(HomePage());
      } else {
        Get.off(WelcomeScreen());
      }
    });
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/logoNaviGo.png')),
            SizedBox(
              height: size.height * 0.1,
            ),
            // Container(
            //   height: size.height * 0.3,
            //   child: AvifImage.asset(
            //     'assets/images/delivery-order-illustration-modern-flat-style_529804-24.avif',
            //     fit: BoxFit.contain,
            //   ),
            // ),
            Container(
              height: size.height * 0.3,
              child: Lottie.asset('assets/loading.json'),
            ),
          ],
        ),
      ),
    );
  }
}
