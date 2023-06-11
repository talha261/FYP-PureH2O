import 'package:flutter/material.dart';
import 'package:pureh20/Widgets/CustomButtom.dart';

import '../../Utils/Colors.dart';
import '../../Widgets/TextInput.dart';

class registration extends StatefulWidget {
  const registration({super.key});

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.backgroundColor,
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.cover,
                    )),
                CustomTextInput(
                  controller: nameController,
                  hintText: "Shop Name",
                  prefixIcon: Icons.shop_two_outlined,
                  icon: true,
                ),
                // Container(
                //   padding: const EdgeInsets.all(10),
                //   child: TextField(
                //     decoration: InputDecoration(
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(20.0),
                //       ),
                //       labelText: 'Shop Name',
                //     ),
                //   ),
                // ),
                CustomTextInput(
                  controller: nameController,
                  hintText: "User Name",
                  prefixIcon: Icons.location_history_outlined,
                  icon: true,
                ),
                CustomTextInput(
                  controller: nameController,
                  hintText: "Address",
                  prefixIcon: Icons.home_outlined,
                  icon: true,
                ),
                CustomTextInput(
                  controller: nameController,
                  hintText: "Password",
                  prefixIcon: Icons.lock_outline,
                  icon: true,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(text: "Sign Up", onPressed: () {})
              ]),
        ));
  }
}
