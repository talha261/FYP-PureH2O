import 'package:flutter/material.dart';

import 'Screeens/Auth/login.dart';
import 'Utils/Colors.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => login()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
