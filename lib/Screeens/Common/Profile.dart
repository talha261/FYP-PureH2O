import 'package:flutter/material.dart';
import 'package:pureh20/Utils/Colors.dart';
import 'package:pureh20/Widgets/CustomButtom.dart';
import 'package:pureh20/Widgets/HeaderWithBackButton.dart';
import 'package:pureh20/Widgets/TextInput.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController shopNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  PickedFile? imageFile;

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
              HeaderWithBackButton(
                buttonColor: AppColors.buttonColor,
                screenName: "Profile",
                backgroundcolor: AppColors.backgroundColor,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                        height: 80,
                        width: 80,
                        //   child: ClipRRect(
                        //       borderRadius: BorderRadius.circular(10),
                        child: imageProfile()),
                    // ),
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
                      controller: shopNameController,
                      hintText: "Shop Name",
                      prefixIcon: Icons.synagogue_outlined,
                      icon: true,
                    ),
                    CustomTextInput(
                      controller: userNameController,
                      hintText: "user Name",
                      prefixIcon: Icons.account_circle_outlined,
                      icon: true,
                    ),
                    CustomTextInput(
                      controller: emailController,
                      hintText: "Email",
                      prefixIcon: Icons.email_outlined,
                      icon: true,
                    ),
                    CustomTextInput(
                      controller: addressController,
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
                      controller: newPasswordController,
                      hintText: " New Password",
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

  Widget imageProfile() {
    return Center(
      child: Stack(
        children: <Widget>[
          CircleAvatar(
            radius: 80.0,
            backgroundImage: imageFile == null
                ? Image.network(
                    "https://cdn.pixabay.com/photo/2023/07/30/00/12/cat-8157889_1280.png",
                  ).image
                : FileImage(File(imageFile!.path)),
          ),
          Positioned(
            bottom: 1.0,
            right: 1.0,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((builder) => bottomSheet()),
                );
              },
              child: Icon(
                Icons.camera_alt_rounded,
                color: AppColors.inputTextColor,
                size: 25.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Profile photo",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            TextButton.icon(
              icon: Icon(Icons.camera),
              onPressed: () {
                takePhoto(ImageSource.camera);
              },
              label: Text("Camera"),
            ),
            TextButton.icon(
              icon: Icon(Icons.image),
              onPressed: () {
                takePhoto(ImageSource.gallery);
              },
              label: Text("Gallery"),
            ),
          ])
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final ImagePicker _picker = ImagePicker();
    final pickedFile = await _picker.pickImage(
      source: source,
    );
    if (pickedFile == null) return;
    setState(() {
      imageFile = PickedFile(pickedFile.path);
    });
  }
}
