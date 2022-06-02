import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venclfit/landingpage.dart';

void main() {
  runApp(MyApp());
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
