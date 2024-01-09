import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:navigo_app/Screens/SignUp/VerifyEmail/verify_screen.dart';
import 'package:navigo_app/Screens/SignUp/signup_bg.dart';

import 'package:navigo_app/constants.dart';

import '../Components/rounded_button.dart';
import '../Components/text_field.dart';
import '../Login/login_body.dart';
import '../Login/login_screen.dart';

class SignUpBody extends StatelessWidget {
  final Widget child;
  const SignUpBody({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController email = TextEditingController();
    return SingleChildScrollView(
      child: SignUpBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sign up".toUpperCase(),
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontFamily: 'Mooli',
                fontSize: btnFontSize,
                color: kPrimaryColor,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundInputField(
              controller: email,
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            AlreadyHaveAccount(
                login: false,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                }),
            RoundedButton(
                text: "Next".toUpperCase(),
                press: () {
                  Get.off(VerifyCodeScreen());
                }),
          ],
        ),
      ),
    );
  }
}
