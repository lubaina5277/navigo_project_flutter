import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:navigo_app/constants.dart';

import '../Components/rounded_button.dart';
import '../Login/login_screen.dart';
import '../SignUp/signup_screen.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Image(image: AssetImage('assets/images/logoNaviGo.png')),
              SizedBox(height: size.height * 0.05),
              SvgPicture.asset(
                "assets/icons/chat.svg",
                height: size.height * 0.45,
              ),
              SizedBox(height: size.height * 0.03),
              RoundedButton(
                text: "login",
                press: () {
                  Get.to(LoginScreen());
                },
              ),
              RoundedButton(
                  text: "sign in",
                  color: kPrimaryLightColor,
                  textColor: Colors.black,
                  press: () {
                    Get.to(SignUpScreen());
                  }),
            ]),
      ),
    );
  }
}
