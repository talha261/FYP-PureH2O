import 'package:flutter/material.dart';
import 'package:pureh20/Screeens/Auth/login.dart';
import 'package:pureh20/Utils/Colors.dart';
import 'package:pureh20/Widgets/CustomButtom.dart';
import 'package:pureh20/Widgets/TextInput.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Change Password',
                  style: TextStyle(
                      fontFamily: "Poppins600",
                      fontSize: 16,
                      color: AppColors.subTextColor),
                  textAlign: TextAlign.center,
                ),
              ),

              //Password Text Input
              CustomTextInput(
                controller: passwordController,
                hintText: "Password",
                prefixIcon: Icons.lock_outline,
                icon: true,
              ),
              CustomTextInput(
                controller: passwordController,
                hintText: "Confirm Password",
                prefixIcon: Icons.lock_outline,
                icon: true,
              ),

              CustomButton(
                  text: "Save",
                  onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => login()))
                      }),
            ],
          ),
        ),
      ),
    );
  }
}
