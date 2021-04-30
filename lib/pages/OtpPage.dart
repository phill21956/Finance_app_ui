import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:payrush/pages/pages.dart';
import 'package:payrush/widgets/widgets.dart';

class OtpPage extends StatefulWidget {
   static const String id = 'otp_page';
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: Container(
         padding: const EdgeInsets.only(top: 0, left: 17, right: 17),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
             children: [
                 SizedBox(
                  height: 128,
                ),
              Headers(title: "OTP Validation"),
              SizedBox(height: 40),
              OTPTextField(
                length: 6,
                width: MediaQuery.of(context).size.width,
                textFieldAlignment: MainAxisAlignment.spaceBetween,
                fieldWidth: 40,
                fieldStyle: FieldStyle.box,
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              SizedBox(height: 40),
              Buttons(
                  title: "Proceed",
                  onPressed: () {
                    Navigator.pushNamed(context,NavigationPage.id);
                  }),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, LoginPage.id),
                child: InfoTextWidget(
                  greyText: "return to",
                  greenText: "  Login",
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