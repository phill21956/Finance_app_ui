import 'package:flutter/material.dart';

class ProfileList extends StatelessWidget {
  final IconData icons;
  final String title;
  final VoidCallback onPressed;

  const ProfileList({
   this.icons,
     this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(10, 20, 10, 0),

        // ignore: deprecated_member_use
        child: FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
            color: Color.fromRGBO(237, 237, 237, 1),
            onPressed: onPressed,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 5, 10),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(37, 172, 132, 0.29),
                    ),
                    child: Icon(icons),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )));
  }
}
