import 'dart:async';
import 'package:flutter/material.dart';

import 'HomePage.dart';
// Import the screen you want to navigate to

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  void navigateToNextScreen() {
    // Delay for 2 seconds before navigating to the next screen
    Timer(Duration(seconds: 7), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WishListScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var hight= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFE4F5F2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/splash.gif",fit: BoxFit.cover,height: hight*0.6,),

          ],
        ),
      ),
    );
  }
}
