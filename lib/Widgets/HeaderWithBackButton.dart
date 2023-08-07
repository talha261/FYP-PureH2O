import 'package:flutter/material.dart';
import 'package:pureh20/Utils/Colors.dart';

class HeaderWithBackButton extends StatelessWidget {
  final String screenName;
  final Color backgroundcolor;
  final Color buttonColor;

  // constructor
  const HeaderWithBackButton(
      {required this.screenName,
      required this.backgroundcolor,
      required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, bottom: 20),
      color: backgroundcolor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 25,
              ),
              onPressed: () => Navigator.of(context).pop(),
              color: buttonColor),
          Container(
            margin: EdgeInsets.only(left: 66),
            child: Text(
              screenName,
              style: TextStyle(
                color: buttonColor,
                fontFamily: "Poppins600",
                fontSize: 24,
              ),
            ),
          )
        ],
      ),
    );
  }
}
