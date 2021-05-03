import 'package:flutter/material.dart';
import 'package:payrush/config/palette.dart';
import 'package:payrush/pages/pages.dart';
import 'package:payrush/widgets/widgets.dart';

class TransactionPage extends StatefulWidget {
  static const String id = 'transaction_page';
  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: Center(
            child: Text(
              "Transaction",
               style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          actions: [
            Container(
              padding: EdgeInsets.only(right: 25),
              child: IconButton(icon: Icon(Icons.delete_outline, color: Colors.black54, size: 24,),
               onPressed: (){ 
                   Navigator.pushNamed(context, NavigationPage.id);
               })
            )

          ],
        //  toolbarHeight: 128,
          backgroundColor: Palette.white,
        ),
        body: Container(
          //padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                //  SizedBox(height: 30,),
                Container(
                  child: WithdrawList(),
                ),
                Container(
                  child: CreditList(),
                ),
                Container(
                  child: WithdrawList(),
                ),
                Container(
                  child: CreditList(),
                ),
                Container(
                  child: WithdrawList(),
                ),
                Container(
                  child: CreditList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}