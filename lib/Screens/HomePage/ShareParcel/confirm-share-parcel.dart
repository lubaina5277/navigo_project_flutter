import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigo_app/Screens/Components/rounded_button.dart';
import 'package:navigo_app/Screens/Login/login_bg.dart';
import 'package:navigo_app/constants.dart';

import 'parcel_form.dart';

class ConfirmShareParcel extends StatelessWidget {
  const ConfirmShareParcel({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: LoginBackground(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/ShareParcel.png"),
              SizedBox(height: size.height * 0.05),
              const Text(
                "Share your ride with Rider",
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'Mooli',
                  fontWeight: FontWeight.w900,
                  color: kPrimaryColor,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: size.height * 0.01),
              const Text(
                "It's never been easier to share a parcel with Rider, but now it's possible with NaviGo ride.",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: size.height * 0.019),
              RoundedButton(
                  text: "Start",
                  press: () {
                    Get.to(const ParcelDetailsForm());
                  })
            ],
          ),
        ),
      ),
    );
  }
}
