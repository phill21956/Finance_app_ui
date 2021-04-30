import 'package:flutter/material.dart';

class WithdrawList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
                  child: ListTile(
                    leading: Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(211, 18, 18, 0.36),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.south_west_outlined,
                          color: Colors.red,
                        )),
                    title: Text(
                      'Withdraw Title',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(2, 35, 25, 1)),
                    ),
                    subtitle: Text(
                      '20th april,2021',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(147, 147, 147, 1)),
                    ),
                    trailing: Text(
                      'NGN 2,000',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(211, 18, 18, 1)),
                    ),
                  ),
                );
                  
  }
}


class CreditList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
                  child: ListTile(
                    leading: Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(37,172, 132, 0.29),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.north_east_outlined,
                          color: Colors.green,
                        )),
                    title: Text(
                      'Credit Title',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(2, 35, 25, 1)),
                    ),
                    subtitle: Text(
                      '20th april, 2021',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(147, 147, 147, 1)),
                    ),
                    trailing: Text(
                      'NGN 10,000',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(37, 172, 132, 1)),
                    ),
                  ),
                );
           
             
  }
}