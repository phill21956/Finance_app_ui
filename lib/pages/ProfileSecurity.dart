import 'package:flutter/material.dart';
import 'package:payrush/widgets/widgets.dart';

class SecurityPage extends StatefulWidget {
  static const String id = 'security_page';
  @override
  _SecurityPageState createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ProfileHeader(
              headerTitle: "Profile",
              imageTitle: "Security",
            ),
            Container(
              padding: const EdgeInsets.only( left: 17, right: 17),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SubProfileListWidget(
                      icon: Icons.vpn_key_outlined,
                      title: "Password",
                      subTitle: "last updated 20 weeks ago",
                      press: () {},
                    ),
                    SubProfileListWidget(
                      icon: Icons.fingerprint,
                      title: "Biometric",
                      subTitle: "disabled",
                      press: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}