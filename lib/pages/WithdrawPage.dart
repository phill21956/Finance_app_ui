import 'package:flutter/material.dart';
import 'package:payrush/config/palette.dart';
import 'package:payrush/pages/pages.dart';
import 'package:payrush/widgets/widgets.dart';

class WithdrawPage extends StatefulWidget {
  static const String id = 'withdraw_page';
  @override
  _WithdrawPageState createState() => _WithdrawPageState();
}

class _WithdrawPageState extends State<WithdrawPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text(
                "Withdraw",
                style: TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          // toolbarHeight: 128,
          backgroundColor: Palette.white,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TotalAmountContainer(
                  amount: "NGN 21,000.00",
                ),
                SizedBox(
                  height: 40,
                ),
                SelectedWidget(),
                SizedBox(
                  height: 30,
                ),
                InputWidget(
                  hintText: "Enter account number",
                  isPassword: false,
                  isEmail: false,
                  onChange: (_) {},
                ),
                SizedBox(
                  height: 35,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.repeat,
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                InputWidget(
                  hintText: "Name is autogenerated",
                  isPassword: false,
                  isEmail: false,
                  onChange: (_) {},
                ),
                SizedBox(
                  height: 30,
                ),
                InputWidget(
                  hintText: "Enter pin",
                  isPassword: true,
                  isEmail: false,
                  onChange: (_) {},
                ),
                SizedBox(
                  height: 40,
                ),
                Buttons(
                  title: "Withdraw",
                  onPressed: () {
                    Navigator.pushNamed(context, WithdrawSuccessPage.id);
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
