import 'dart:async';

import 'package:blinkit_ui/repository/screens/login/loginscreen.dart';
import 'package:blinkit_ui/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:blinkit_ui/domain/constants/appcolor.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(img: 'img.png'),
          ],
        ),
      ),
    );
  }
}
