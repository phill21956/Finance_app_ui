import 'package:flutter/material.dart';
import 'package:payrush/pages/pages.dart';
import 'package:payrush/widgets/widgets.dart';

class SignUpPage extends StatefulWidget {
  static const String id = 'signup_page';
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
              Headers(title: 'Create a PayRush\nAccount'),
              SizedBox(
                height: 45,
              ),
              Container(
                child: InputWidget(
                    icon: Icons.person_outline,
                    hintText: 'Enter username',
                    isPassword: false,
                    isEmail: false,
                    onChange: (null)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: InputWidget(
                    icon: Icons.mail_outline,
                    hintText: 'Enter email',
                    isPassword: false,
                    isEmail: true,
                    onChange: (null)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: InputWidget(
                    icon: Icons.language_outlined,
                    hintText: 'Select country',
                    isPassword: false,
                    isEmail: false,
                    onChange: (null)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: PhoneInputWidget(onChange: (null)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Buttons(
                    title: 'Sign Up',
                    onPressed: () {
                      Navigator.pushNamed(context, OtpPage.id);
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, LoginPage.id),
                child: InfoTextWidget(
                  greyText: "Have an account ? ",
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