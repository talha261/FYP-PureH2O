import 'package:flutter/material.dart';
import 'package:pureh20/Widgets/TextInput.dart';
import 'package:pureh20/homepage.dart';

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
                padding: const EdgeInsets.all(16.0),
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
                          'images/logo.png',
                          fit: BoxFit.cover,
                        )),
                    Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                          'LogIn',
                          style: TextStyle(
                              fontFamily: "Poppins300",
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
                        controller: nameController, hintText: "Email"),
                    //Password Text Input
                    CustomTextInput(
                        controller: passwordController, hintText: "Password"),
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
                    TextButton(
                      onPressed: () {
                        //forgot password screen
                      },
                      child: const Text(
                        'Forgot Password',
                      ),
                    ),
                    Container(
                        height: 50,
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                          child: const Text('Login'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => homepage()));
                          },
                        )),
                    Row(
                      children: <Widget>[
                        const Text('Does not have account?'),
                        TextButton(
                          child: const Text(
                            'Sign In',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            //signup screen
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ],
                ))));
  }
}
