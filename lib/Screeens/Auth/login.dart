import 'package:flutter/material.dart';
import 'package:pureh20/Widgets/CustomButtom.dart';
import 'package:pureh20/Widgets/TextInput.dart';
import 'package:pureh20/Screeens/Shop/DashBoard.dart';

import "../../Utils/Colors.dart";

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController nameController = TextEditingController();
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
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'SIGN IN',
                    style: TextStyle(
                        fontFamily: "Poppins600",
                        fontSize: 16,
                        color: AppColors.subTextColor),
                    textAlign: TextAlign.center,
                  )),
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
                  controller: nameController,
                  hintText: "Email",
                  prefixIcon: Icons.email_outlined,
                  icon: true),
              //Password Text Input
              CustomTextInput(
                controller: passwordController,
                hintText: "Password",
                prefixIcon: Icons.lock_outline,
                icon: true,
              ),
              // Container(
              //   padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              //   child: TextField(
              //     obscureText: true,
              //     controller: passwordController,
              //     decoration: const InputDecoration(
              //       border: OutlineInputBorder(),
              //       labelText: 'Password',
              //     ),
              //   ),
              // ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Forgot Password ?',
                      style: TextStyle(
                        color: AppColors.subTextColor,
                        fontFamily: "Garet-Book",
                        fontSize: 16,
                      ),
                    ),
                    InkWell(
                      onTap: () => showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Talha'),
                            content: const Text(
                                'Is k on tap pr naviagte karao verify eamil pr'),
                            actions: [
                              TextButton(
                                child: Text('Close'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      ),
                      child: const Text(
                        "Reset here",
                        style: TextStyle(
                            fontFamily: "Garet-Book",
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              CustomButton(
                  text: "Sign In",
                  onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => homepage()))
                      }),
              // Container(
              //   height: 50,
              //   padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              //   child: ElevatedButton(
              //     child: const Text('Login'),
              //     onPressed: () {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (context) => homepage()));
              //     },
              //   ),
              // ),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Create a new account  ',
                      style: TextStyle(
                        color: AppColors.buttonColor,
                        fontFamily: "Garet-Book",
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                    InkWell(
                      onTap: () => showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Talha'),
                            content: const Text(
                                'Is k on tap pr naviagte karao signup pr'),
                            actions: [
                              TextButton(
                                child: Text('Close'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      ),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontFamily: "Garet-Book",
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFFB800),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
