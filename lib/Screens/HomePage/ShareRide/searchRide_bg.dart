import 'package:flutter/material.dart';

class SearchRideBg extends StatefulWidget {
 final Widget child;
  const SearchRideBg({
    super.key,
    required this.child,
  });

  @override
  State<SearchRideBg> createState() => _SearchRideBgState();
}

class _SearchRideBgState extends State<SearchRideBg> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: size.width * 0.35,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/images/login_bottom.png",
              width: size.width * 0.4,
            ),
          ),
          widget.child,
        ],
      ),
    );
  }
}
