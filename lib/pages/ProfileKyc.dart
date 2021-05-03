import 'package:flutter/material.dart';
import 'package:payrush/config/palette.dart';
import 'package:payrush/widgets/widgets.dart';

class KycPage extends StatefulWidget {
   static const String id = 'kyc_page';
  @override
  _KycPageState createState() => _KycPageState();
}

class _KycPageState extends State<KycPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
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
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ProfileHeader(
           
              imageTitle: "KYC",
            ),
            Container(
              padding: const EdgeInsets.only( left: 17, right: 17),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SubProfileListWidget(
                      icon: Icons.card_membership_outlined,
                      title: "BVN",
                      subTitle: "922****7",
                      press: () {},
                    ),
                    SubProfileListWidget(
                      icon: Icons.person_outline,
                      title: "NIN",
                      subTitle: "2333 *******",
                      press: () {},
                    ),
                    SubProfileListWidget(
                      icon: Icons.drive_eta_outlined,
                      title: "Drivers license",
                      subTitle: "323NM8 ****",
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