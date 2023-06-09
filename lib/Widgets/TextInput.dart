import 'package:flutter/material.dart';
import 'package:pureh20/Utils/Colors.dart';

class CustomTextInput extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  // final IconData prefixIcon;
  final bool obscureText;

  const CustomTextInput({
    Key? key,
    required this.controller,
    required this.hintText,
    // required this.prefixIcon,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      child: TextFormField(
        style: const TextStyle(color: AppColors.inputTextColor),
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          // filled: true,
          // fillColor: AppColors.,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(color: AppColors.inputTextColor)),
          hintText: hintText,

          hintStyle: const TextStyle(color: AppColors.placeHolderColor),
          // prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(color: AppColors.inputTextColor)),
        ),
      ),
    );
  }
}
