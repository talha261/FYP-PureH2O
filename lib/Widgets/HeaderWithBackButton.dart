import 'package:flutter/material.dart';
import 'package:pureh20/Utils/Colors.dart';

class HeaderWithBackButton extends StatelessWidget {
  final String screenName;

  // constructor
  const HeaderWithBackButton({required this.screenName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, bottom: 20),
      color: AppColors.backgroundColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 25,
              ),
              onPressed: () => Navigator.pop(context),
              color: AppColors.buttonColor),
          Container(
            margin: EdgeInsets.only(left: 66),
            child: Text(
              screenName,
              style: TextStyle(
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
