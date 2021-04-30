import 'package:flutter/material.dart';
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ProfileHeader(
              headerTitle: "Profile",
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