import 'package:flutter/material.dart';
import 'package:pureh20/Utils/Colors.dart';
import 'package:pureh20/Widgets/CustomButtom.dart';
import 'package:pureh20/Widgets/HeaderWithBackButton.dart';
import 'package:pureh20/Widgets/TextInput.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWithBackButton(screenName: "Profile"),
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2023/07/30/00/12/cat-8157889_1280.png",
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Text("Shop Name",
                              style: TextStyle(
                                fontFamily: "Poppins600",
                                fontSize: 15,
                              )),
                          Text("Address Of Shop",
                              style: TextStyle(
                                fontFamily: "Poppins500",
                                fontSize: 14,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  "Account Details",
                  style: TextStyle(fontFamily: "Poppins600", fontSize: 16),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    CustomTextInput(
                      controller: nameController,
                      hintText: "Shop Name",
                      prefixIcon: Icons.synagogue_outlined,
                      icon: true,
                    ),
                    CustomTextInput(
                      controller: nameController,
                      hintText: "user Name",
                      prefixIcon: Icons.account_circle_outlined,
                      icon: true,
                    ),
                    CustomTextInput(
                      controller: nameController,
                      hintText: "Email",
                      prefixIcon: Icons.email_outlined,
                      icon: true,
                    ),
                    CustomTextInput(
                      controller: nameController,
                      hintText: "Shop Address",
                      prefixIcon: Icons.synagogue_sharp,
                      icon: true,
                    ),
                    CustomTextInput(
                      controller: passwordController,
                      hintText: "Password",
                      prefixIcon: Icons.lock_outline,
                      icon: true,
                    ),
                    CustomTextInput(
                      controller: passwordController,
                      hintText: "Password",
                      prefixIcon: Icons.lock_outline,
                      icon: true,
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        child: CustomButton(
                            text: "Save Changes", onPressed: () => null))
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
