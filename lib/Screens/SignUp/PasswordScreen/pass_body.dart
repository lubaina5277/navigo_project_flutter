import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigo_app/Screens/HomePage/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../constants.dart';
import '../../Components/rounded_button.dart';
import '../../Components/text_field.dart';
import '../signup_bg.dart';

class PassBody extends StatefulWidget {
  final Widget child;
  const PassBody({super.key, required this.child});

  @override
  State<PassBody> createState() => _PassBodyState();
}

class _PassBodyState extends State<PassBody> {
  TextEditingController pass = new TextEditingController();
  TextEditingController ConfirmPass = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SignUpBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('assets/images/passBody.webp')),
            PasswordField(
              controller: pass,
              onChanged: (value) {},
            ),
            ConfirmPasswordField(
              controller: ConfirmPass,
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Confirm",
              press: () async {
                if ((pass.text.isNotEmpty && ConfirmPass.text.isNotEmpty) &&
                    (pass.text == ConfirmPass.text)) {
                  final SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  await prefs.setBool('isLogin', true);
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Login successfullly')));
                  Get.off(HomePage());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  const PasswordField({
    Key? key,
    required this.controller,
    required this.onChanged,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscure = true;

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

class ConfirmPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  const ConfirmPasswordField({
    Key? key,
    required this.controller,
    required this.onChanged,
  });

  @override
  State<ConfirmPasswordField> createState() => _ConfirmPasswordField();
}

class _ConfirmPasswordField extends State<ConfirmPasswordField> {
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
