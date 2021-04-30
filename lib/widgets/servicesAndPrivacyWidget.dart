import 'package:flutter/material.dart';
import 'package:payrush/config/palette.dart';


class ServicesAndPrivacyWidget extends StatelessWidget {
  const ServicesAndPrivacyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, bottom: 94),
      child: Column(
        children: [
          Center(
            child: Text(
              "Terms of Services  |  Privacy Policy",
              maxLines: 1,
              style: TextStyle(
                color: Palette.black.withOpacity(0.3),
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 18),
          Center(
            child: Text(
              "2021 PayRush. All rights reserved",
              maxLines: 1,
              style: TextStyle(
                color: Palette.black.withOpacity(0.3),
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
