import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venclfit/mainpage.dart';

class LandingPage extends StatefulWidget {

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), (){
      // Get.to(MainPage());
      Get.offAll(MainPage());
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          alignment: Alignment.center,
          children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset('assets/image/V.png', fit:BoxFit.cover,)
          ),
            CircularProgressIndicator()
          ],
      )
      );
  }
}