import 'package:flutter/material.dart';
import 'package:navigo_app/constants.dart';
import 'package:flutter/services.dart';

class InputFieldContainer extends StatelessWidget {
  final Widget child;
  const InputFieldContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}

class RoundInputField extends StatefulWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  final Color borderColor;
  final double borderWidth;
  final Color focusedBorderColor;
  final TextStyle hintStyle;

  const RoundInputField({
    super.key,
    required this.hintText,
    required this.onChanged,
    required this.controller,
    this.borderColor = kPrimaryColor,
    this.borderWidth = 3.0,
    this.focusedBorderColor = kPrimaryLightColor,
    required this.hintStyle,
  });

  @override
  State<RoundInputField> createState() => _RoundInputFieldState();
}

class _RoundInputFieldState extends State<RoundInputField> {
  @override
  Widget build(BuildContext context) {
    return InputFieldContainer(
      child: TextField(
        controller: widget.controller,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: widget.hintStyle,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
