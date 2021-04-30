import 'package:flutter/material.dart';
import 'package:payrush/config/palette.dart';
import 'package:payrush/widgets/widgets.dart';

import 'pages.dart';

class HomePage extends StatefulWidget {
   static const String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   return SafeArea(
        child: Scaffold(
        appBar: AppBar(

          elevation: 1,
          title: Container(
            alignment: AlignmentDirectional.bottomCenter,
            child: Text(
              "PayRush",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
          actions: [
            Container(
              padding: EdgeInsets.only(right: 25),
              child: Icon(
                Icons.notifications_none,
                color: Colors.black54,
                size: 32,
              
              ),
            )
          ],
          toolbarHeight: 128,
          backgroundColor: Palette.white,
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(17, 20, 17, 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                Text(
                  'Welcome Tade  😌',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'You have been',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                            text: ' credited',
                            style: TextStyle(
                                color: Color.fromRGBO(37, 172, 132, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                            text: '\ntwice today',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                            text: ' withdraw',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(37, 172, 132, 0.29),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: IconButton(
                          icon: Icon(
                            Icons.payment_outlined,
                            color: Colors.black54,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, WithdrawPage.id);
                          }),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Stack(
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'images/Group15.png',
                          fit: BoxFit.fill,
                          height: 203,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Text(
                        'PayRush Card',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.fromLTRB(20, 100, 0, 0),
                      child: Text(
                        'TOTAL AMOUNT',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Palette.white.withOpacity(0.4)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.fromLTRB(20, 140, 0, 10),
                      child: Text(
                        'NGN 21,000.00',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent Transactions',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, TransactionPage.id),
                      child: Text(
                        'see all',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    WithdrawList(),
                    CreditList(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}