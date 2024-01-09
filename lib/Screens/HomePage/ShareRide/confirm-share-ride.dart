import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigo_app/Screens/Components/rounded_button.dart';
import 'package:navigo_app/Screens/HomePage/ShareRide/share_ride_form.dart';
import 'package:navigo_app/Screens/HomePage/ShareRide/take_parcel.dart';
import 'package:navigo_app/Screens/Login/login_bg.dart';
import 'package:navigo_app/constants.dart';

class ConfirmShareRide extends StatelessWidget {
  const ConfirmShareRide({super.key});

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
              Image.asset("assets/images/share-ride.png"),
              SizedBox(height: size.height * 0.05),
              const Text(
                "Share your ride with stranger",
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
                "It's never been easier to book a ride with stranger, but now it's possible with NaviGo ride.",
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
                    _showStartDialog(context);
                  })
            ],
          ),
        ),
      ),
    );
  }

  void _showStartDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return StartDialog();
      },
    );
  }
}

class StartDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(child: Text("Choose an Option")),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 150,
            height: 45,
            child: ElevatedButton(
              onPressed: () {
                Get.off(const TakeParcelForm());
              },
              style: ElevatedButton.styleFrom(
                primary: kPrimaryColor,
              ),
              child: Text("Take Parcel"),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: 150,
            height: 45,
            child: ElevatedButton(
              onPressed: () {
                Get.off(const ShareRideForm());
              },
              style: ElevatedButton.styleFrom(
                primary: kPrimaryColor,
              ),
              child: Text("Share Ride"),
            ),
          ),
        ],
      ),
    );
  }
}
