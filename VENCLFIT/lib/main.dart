import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venclfit/landingpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Noto_Serif'),
      home: LandingPage(),
    );
  }
}
