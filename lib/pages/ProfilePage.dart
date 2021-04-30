import 'package:flutter/material.dart';
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProfileHeader(
              headerTitle: "Profile",
              imageTitle: "Tade Adejanu",
            ),
           Container(
            child: ProfileList(icons: Icons.security_outlined, title: 'Security', onPressed: (){
                Navigator.pushNamed(context, SecurityPage.id);
            }),
           ),
             Container(
            child: ProfileList(icons: Icons.settings, title: 'Settings', onPressed: (){
                Navigator.pushNamed(context, SettingsPage.id);
            }),
           ),
            Container(
            child: ProfileList(icons: Icons.error_outline, title: 'KYC', onPressed: (){
                Navigator.pushNamed(context, KycPage.id);
            }),
           ),
            Container(
            child: ProfileList(icons: Icons.logout, title: 'Sign Out', onPressed: (){
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