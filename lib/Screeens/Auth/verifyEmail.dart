import 'package:flutter/material.dart';
import 'package:pureh20/Screeens/Auth/otp.dart';
import 'package:pureh20/Screeens/Auth/registration.dart';
import 'package:pureh20/Screeens/Shop/DashBoard.dart';
import 'package:pureh20/Utils/Colors.dart';
import 'package:pureh20/Widgets/CustomButtom.dart';
import 'package:pureh20/Widgets/TextInput.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  TextEditingController emailController = TextEditingController();

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
                  'Verify Email',
                  style: TextStyle(
                      fontFamily: "Poppins600",
                      fontSize: 16,
                      color: AppColors.subTextColor),
                  textAlign: TextAlign.center,
                ),
              ),
              // Container(
              //   padding: const EdgeInsets.all(10),
              //   child: TextField(
              //     controller: nameController,
              //     decoration: const InputDecoration(
              //       hintText: "Email",
              //       hintStyle:
              //           TextStyle(color: AppColors.placeHolderColor),
              //       border: OutlineInputBorder(
              //           borderSide:
              //               BorderSide(color: AppColors.textColor)),
              //     ),
              //   ),
              // ),
              //Email Text Input
              CustomTextInput(
                controller: emailController,
                hintText: "Email",
                prefixIcon: Icons.email_outlined,
                icon: true,
              ),

              CustomButton(
                  text: "Continue",
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OTPScreen(
                                    email: emailController.text,
                                    otp: "1234",
                                    type: "forgetPass")))
                      }),
            ],
          ),
        ),
      ),
    );
  }
}
