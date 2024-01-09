import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:navigo_app/Screens/HomePage/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../constants.dart';

import '../Components/rounded_button.dart';
import '../Components/text_field.dart';
import '../SignUp/signup_screen.dart';
import 'login_bg.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({
    super.key,
  });

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();
    return SingleChildScrollView(
      child: LoginBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontFamily: 'Mooli',
                fontSize: btnFontSize,
                color: kPrimaryColor,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.04),
            RoundInputField(
              controller: email,
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              controller: pass,
              onChanged: (value) {},
            ),
            AlreadyHaveAccount(
              press: () {
                Get.off(SignUpScreen());
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () async {
                if (email.text.isNotEmpty && pass.text.isNotEmpty) {
                  final SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  await prefs.setBool('isLogin', true);
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Login successfullly')));
                  Get.off(HomePage());
                }
              },
            ),
            SizedBox(height: size.height * 0.02),
          ],
        ),
      ),
    );
  }
}

class AlreadyHaveAccount extends StatefulWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAccount({
    super.key,
    this.login = true,
    required this.press,
  });

  @override
  State<AlreadyHaveAccount> createState() => _AlreadyHaveAccountState();
}

class _AlreadyHaveAccountState extends State<AlreadyHaveAccount> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          widget.login ? "Don't have an Account ?" : "Already have an Account",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: () {
            widget.press();
          },
          child: Text(
            widget.login ? " Sign Up" : " Log In",
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
    required this.controller,
  });

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool obscure = true; // Moved this variable to the state class

  @override
  void initState() {
    super.initState();
    obscure = true; // Initialize the obscure variable here
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: widget.controller,
        obscureText: obscure,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                obscure = !obscure; // Toggle the obscure state
              });
            },
            icon: Icon(
              obscure ? Icons.visibility : Icons.visibility_off,
              color: kPrimaryColor,
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
