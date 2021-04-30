import 'package:flutter/material.dart';
import 'package:payrush/pages/LoginPage.dart';

class SplashScreen extends StatefulWidget {
   static const String id = 'splash_screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //wait for 3 seconds before navigating to the next page
    Future.delayed(Duration(seconds: 6)).then((value) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(248, 248, 248, 1),
        body: Center(child: Image.asset('images/Group47.png')),
      ),
    );
  }
}
