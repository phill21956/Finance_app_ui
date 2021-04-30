import 'package:flutter/material.dart';
import 'package:payrush/pages/pages.dart';
import 'package:payrush/widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  static const String id = 'login_page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
         padding: const EdgeInsets.only(top: 0, left: 17, right: 17),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
            
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  SizedBox(
                  height: 128,
                ),
                Headers(
                  title: "Log in to your \naccount",
                ),
                //  LogInPageHeader(),
                SizedBox(
                  height: 45,
                ),
                Text(
                  "Phone Number",
                ),
                SizedBox(
                  height: 23,
                ),
                PhoneInputWidget(
                  onChange: (_) {
                    //get number
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                Buttons(
                    title: "Sign In",
                    onPressed: () {
                      //send to otp
                      Navigator.pushNamed(context, OtpPage.id);
                    }),
                SizedBox(
                  height: 20,
                ),
               
              // ignore: deprecated_member_use
              FlatButton(onPressed: () => Navigator.pushNamed(context, SignUpPage.id), 
              child: InfoTextWidget(
                greyText: 'Not registered yet ? ',
                greenText: 'Create an account',
              ),
              ),
              
                ServicesAndPrivacyWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
