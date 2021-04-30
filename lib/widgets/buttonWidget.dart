import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String title;
  final Function onPressed;

  const Buttons({this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      // ignore: deprecated_member_use
      child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Color.fromRGBO(37, 172, 132, 1),
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
            ),
          )),
    );
  }
}