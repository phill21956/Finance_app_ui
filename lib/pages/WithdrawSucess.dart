import 'package:flutter/material.dart';
import 'package:payrush/config/palette.dart';
import 'package:payrush/pages/pages.dart';
import 'package:payrush/widgets/widgets.dart';

class WithdrawSuccessPage extends StatefulWidget {
  static const String id = 'withdrawsucess_page';
  @override
  _WithdrawSuccessPageState createState() => _WithdrawSuccessPageState();
}

class _WithdrawSuccessPageState extends State<WithdrawSuccessPage> {
  @override
  Widget build(BuildContext context) {
     return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: Text(
            "Withdraw",
            style: TextStyle(color: Colors.black),
          ),
        ),
        toolbarHeight: 128,
        backgroundColor: Palette.white,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              TotalAmountContainer(
                amount: "NGN 10,000.00",
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(37, 172, 132, 0.29),
                  shape: BoxShape.circle,
                ),
                height: 104,
                width: 104,
                child: Icon(
                  Icons.check,
                  size: 39,
                  color: Palette.primaryColor,
                ),
              ),
              SizedBox(height: 23),
              Center(
                child: Text(
                  "Transfer  was  sucessful  😌",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 13),
              Center(
                child: Text(
                  "At vero eos et accusamus et iusto odio dignissimos ducimus",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 45),
              Buttons(
                title: "Proceed to dashboard",
                onPressed: () {
                   Navigator.pushNamed(context, NavigationPage.id);
                },
              ),
              SizedBox(
                height: 255,
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}