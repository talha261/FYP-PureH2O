import 'package:flutter/material.dart';
import 'package:pureh20/Utils/Colors.dart';
import 'package:pureh20/splash.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColors.backgroundColor, // Set your desired color here
    ));
    return MaterialApp(
      title: 'pureh20',
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
