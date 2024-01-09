import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:navigo_app/Screens/HomePage/Calender/calender_screen.dart';
import 'package:navigo_app/Screens/HomePage/SearchRide/confirm-search-ride.dart';
import 'package:navigo_app/Screens/HomePage/ShareRide/confirm-share-ride.dart';

import 'ShareParcel/confirm-share-parcel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      child: Card(
        elevation: 0, // Adjust the elevation as needed
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.loose,
          children: <Widget>[
            ClipPath(
              clipper: ClippingClass(),
              child: Container(
                width: double.infinity,
                height: size.height * 5 / 9,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffb39ddb),
                      Color(0xff673ab7),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 80,
              height: 80,
              width: 80,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 5.0, // Adjust the width as needed
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Icon(
                    Icons.person_outline_rounded,
                    size: 60,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Positioned(
              left: 25,
              top: 170,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Hi John",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: "Mooli",
                    ),
                  ),
                  Text(
                    "Get home delivery, person travel \nor ride share",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Mooli',
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 20,
              top: 330,
              right: 20,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Get.to(const ConfirmShareParcel());
                        },
                        child: _customCard(
                          iconData: 'assets/ParcelSending.json',
                          item: "Parcel Sending",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(const ConfirmShareRide());
                        },
                        child: _customCard(
                          iconData: 'assets/RideShare.json',
                          item: "Ride Sharing",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Get.to(CalendarScreen());
                        },
                        child: _customCard(
                          iconData: 'assets/Calandar.json',
                          item: "Calendar",
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(const ConfirmSearchRide());
                        },
                        child: _customCard(
                          iconData: 'assets/SearchRide.json',
                          item: "Search Ride",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _customCard({required String iconData, required String item}) {
    return Builder(
      builder: (context) {
        // Use a Builder widget to get the context
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.43,
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Lottie.asset(iconData),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          item,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Mooli',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    var controlPoint = Offset(size.width - (size.width / 2), size.height - 120);
    var endPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
