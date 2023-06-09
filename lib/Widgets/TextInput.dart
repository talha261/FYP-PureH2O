import 'package:flutter/material.dart';
import 'package:pureh20/Utils/Colors.dart';

class CustomTextInput extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData prefixIcon;
  final bool icon;
  final bool obscureText;

  const CustomTextInput({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
    this.icon = false,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: TextFormField(
        style: const TextStyle(
            color: AppColors.inputTextColor, fontFamily: "Poppins400"),
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          // filled: true,
          // fillColor: AppColors.,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide:
                  const BorderSide(color: AppColors.inputTextColor, width: 2)),
          hintText: hintText,

          hintStyle: const TextStyle(color: AppColors.placeHolderColor),
          prefixIcon: icon
              ? Icon(
                  prefixIcon,
                  color: AppColors.inputTextColor,
                )
              : null,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(color: AppColors.placeHolderColor)),
        ),
      ),
    );
  }
}
