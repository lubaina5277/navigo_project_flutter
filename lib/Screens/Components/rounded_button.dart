import 'package:flutter/material.dart';
import 'package:navigo_app/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    super.key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0),
      width: size.width * 0.8,
      height: size.height * 0.085,
      child: ClipRRect(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: BorderSide(color: kPrimaryColor),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(color),
            ),
            onPressed: () {
              press();
            },
            child: Text(
              text.toUpperCase(),
              style: TextStyle(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
