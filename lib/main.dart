import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payrush/pages/pages.dart';
import 'package:payrush/config/palette.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Rush',
      theme: ThemeData(
        primaryColor:
            Palette.primaryColor, //from palette class in config folder
        fontFamily: GoogleFonts.manrope().fontFamily,
        scaffoldBackgroundColor: Palette.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: LoginPage.id,
     // initialRoute: NavigationPage.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
         LoginPage.id: (context) => LoginPage(),
        SignUpPage.id: (context) => SignUpPage(),  
       OtpPage.id: (context) => OtpPage(),
        NavigationPage.id: (context) => NavigationPage(),
       HomePage.id: (context) => HomePage(),
        WithdrawPage.id: (context) => WithdrawPage(),
        WithdrawSuccessPage.id: (context) => WithdrawSuccessPage(),
        TransactionPage.id: (context) => TransactionPage(),
        ProfilePage.id: (context) => ProfilePage(),
        SecurityPage.id: (context) => SecurityPage(),
        SettingsPage.id: (context) => SettingsPage(),
        KycPage.id: (context) => KycPage(),
      },

     
    );
  }
}
