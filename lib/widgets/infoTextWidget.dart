import 'package:flutter/material.dart';
import 'package:payrush/config/palette.dart';


class InfoTextWidget extends StatelessWidget {

  final String greyText;
  final String greenText;

  const InfoTextWidget({
     this.greyText, this.greenText,
  }) ;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
                text: greyText,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                )),
            TextSpan(
                text: greenText,
                style: TextStyle(
                  color: Palette.primaryColor,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                )),
          ],
        ),
      ),
    );
  }
}
