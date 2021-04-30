import 'package:flutter/material.dart';
import 'package:payrush/config/palette.dart';



class TotalAmountContainer extends StatelessWidget {

  final String amount;
  const TotalAmountContainer({
    Key key, this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40),
      color: Palette.grey,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total Amount",
              style: TextStyle(
                  color: Palette.black.withOpacity(0.3),
                  fontSize: 17,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              amount,
              style: TextStyle(
                  color: Palette.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ]),
    );
  }
}
