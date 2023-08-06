import 'package:flutter/material.dart';
import 'package:pureh20/Screeens/Auth/login.dart';
import 'package:pureh20/Screeens/Auth/otp.dart';
import 'package:pureh20/Widgets/CustomButtom.dart';

import '../../Utils/Colors.dart';
import '../../Widgets/TextInput.dart';

class registration extends StatefulWidget {
  const registration({super.key});

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
// States
  String accountType = "shop";

// Functions
  void toggleTabs(value) {
    setState(() {
      accountType = value;
    });
  }

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController shopNameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController shopAddressController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.backgroundColor,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(
                          fontFamily: "Poppins600",
                          fontSize: 16,
                          color: AppColors.subTextColor),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        color: accountType == "shop"
                            ? AppColors.primaryColor
                            : AppColors.backgroundColor,
                        child: InkWell(
                          onTap: () => toggleTabs("shop"),
                          child: Container(
                            height: 30,
                            width: 100,
                            alignment: Alignment.center,
                            child: Text(
                              "Shop Owner",
                              style: TextStyle(
                                fontFamily: "poppins400",
                                color: accountType == "shop"
                                    ? AppColors.backgroundColor
                                    : AppColors.primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: accountType == "customer"
                            ? AppColors.primaryColor
                            : AppColors.backgroundColor,
                        child: InkWell(
                          onTap: () => toggleTabs("customer"),
                          child: Container(
                            height: 30,
                            width: 100,
                            alignment: Alignment.center,
                            child: Text(
                              "Customer",
                              style: TextStyle(
                                fontFamily: "poppins400",
                                color: accountType == "customer"
                                    ? AppColors.backgroundColor
                                    : AppColors.primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  if (accountType == "shop")
                    CustomTextInput(
                      controller: shopNameController,
                      hintText: "Shop Name",
                      prefixIcon: Icons.warehouse_outlined,
                      icon: true,
                    ),
                  CustomTextInput(
                    controller: userNameController,
                    hintText: "User Name",
                    prefixIcon: Icons.account_circle_outlined,
                    icon: true,
                  ),
                  CustomTextInput(
                    controller: emailController,
                    hintText: "Email Address",
                    prefixIcon: Icons.email_outlined,
                    icon: true,
                  ),
                  if (accountType == "shop")
                    CustomTextInput(
                      controller: shopAddressController,
                      hintText: "Shop Address",
                      prefixIcon: Icons.home_work_outlined,
                      icon: true,
                    ),
                  CustomTextInput(
                    controller: passwordController,
                    hintText: "Password",
                    prefixIcon: Icons.lock_outline,
                    icon: true,
                  ),
                  CustomTextInput(
                    controller: confirmPasswordController,
                    hintText: "Confirm Password",
                    prefixIcon: Icons.lock_open_outlined,
                    icon: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                      text: "Sign Up",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OTPScreen(
                                      email: emailController.text,
                                      otp: "1234",
                                      type: "register",
                                    )));
                      }),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account?',
                          style: TextStyle(
                            color: AppColors.buttonColor,
                            fontFamily: "Garet-Book",
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                          ),
                        ),
                        TextButton(
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: "Garet-Book",
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFFB800)),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => login()));
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
