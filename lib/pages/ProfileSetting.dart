import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payrush/widgets/widgets.dart';

class SettingsPage extends StatefulWidget {
   static const String id = 'settings_page';
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
              imageTitle: "Settings",
            ),
            Container(
              padding: const EdgeInsets.only( left: 17, right: 17),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SubProfileListWidget(
                      icon: Icons.vpn_key_outlined,
                      title: "Name",
                      subTitle: "Tade",
                      press: () {},
                    ),
                    SubProfileListWidget(
                      icon: Icons.mail_outline,
                      title: "Emial",
                      subTitle: "tadeadejanu@gmail.com",
                      press: () {},
                    ),
                    SubProfileListWidget(
                      icon: Icons.phone,
                      title: "Mobile Number",
                      subTitle: "+2349*****9",
                      press: () {},
                    ),
                    SubProfileListWidget(
                      icon: CupertinoIcons.globe,
                      title: "Country",
                      subTitle: "Nigeria",
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