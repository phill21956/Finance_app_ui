import 'package:flutter/material.dart';
import 'package:payrush/config/palette.dart';
import 'package:payrush/widgets/widgets.dart';

import 'pages.dart';

class ProfilePage extends StatefulWidget {
  static const String id = 'profile_page';
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Center(
            child: Padding(
            padding: const EdgeInsets.only(right: 50),
              child: Text(
                "Profile",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          backgroundColor: Palette.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProfileHeader(
              
                imageTitle: "Tade Adejanu",
              ),
              Container(
                child: ProfileList(
                    icons: Icons.security_outlined,
                    title: 'Security',
                    onPressed: () {
                      Navigator.pushNamed(context, SecurityPage.id);
                    }),
              ),
              Container(
                child: ProfileList(
                    icons: Icons.settings,
                    title: 'Settings',
                    onPressed: () {
                      Navigator.pushNamed(context, SettingsPage.id);
                    }),
              ),
              Container(
                child: ProfileList(
                    icons: Icons.error_outline,
                    title: 'KYC',
                    onPressed: () {
                      Navigator.pushNamed(context, KycPage.id);
                    }),
              ),
              Container(
                child: ProfileList(
                    icons: Icons.logout,
                    title: 'Sign Out',
                    onPressed: () {
                      Navigator.pushNamed(context, LoginPage.id);
                    }),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
