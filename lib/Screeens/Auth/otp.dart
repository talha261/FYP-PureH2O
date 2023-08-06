import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:pureh20/Screeens/Auth/changePassword.dart';
import 'package:pureh20/Screeens/Shop/DashBoard.dart';
import 'package:pureh20/Utils/Colors.dart';
import 'package:pureh20/Widgets/WhiteButton.dart';

class OTPScreen extends StatefulWidget {
  final String otp;
  final String email;
  final String type;
  const OTPScreen(
      {super.key, required this.email, required this.otp, required this.type});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController OTPController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void verifyOTOP() {
      if (OTPController.text == widget.otp) {
        if (widget.type == "register") {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => homepage()));
        } else {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ChangePassword()));
        }
      }
    }

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 25,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(
                      left: 50, right: 50, bottom: 15, top: 30),
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(bottom: 10),
                      child: const Text(
                        'OTP Verification',
                        style: TextStyle(
                            fontFamily: "Poppins400",
                            fontSize: 30,
                            color: AppColors.inputTextColor),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(bottom: 15),
                      child: Text(
                        'We’ve just send you 4 digits code to your email ${widget.email}',
                        style: const TextStyle(
                            fontFamily: "Poppins400",
                            fontSize: 12,
                            color: AppColors.inputTextColor),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .73,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: AppColors.inputTextColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 100),
                      child: Pinput(
                        validator: (value) {
                          return value == widget.otp ? null : "Incorrect Pin";
                        },
                        controller: OTPController,
                        defaultPinTheme: PinTheme(
                            textStyle: const TextStyle(
                                fontFamily: "Poppins300", fontSize: 20),
                            height: 60,
                            width: 50,
                            decoration: BoxDecoration(
                                color: AppColors.backgroundColor,
                                borderRadius: BorderRadius.circular(50))),
                        autofocus: true,
                      ),
                    ),
                    WhiteButton(text: "Continue", onPressed: verifyOTOP)
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
