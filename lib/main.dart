import 'package:flutter/material.dart';
import 'package:pureh20/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pureh20',
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
