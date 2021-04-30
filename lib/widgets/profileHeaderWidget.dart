import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String headerTitle;
  final String imageTitle;

  const ProfileHeader({ this.headerTitle,  this.imageTitle});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Container(
          margin: EdgeInsets.fromLTRB(0, 100, 0, 20),
          child: Text(
            headerTitle,
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400),
          ),
        )),
        Container(
          child: Stack(
            children: [
              Image.asset(
                'images/Group15.png',
                fit: BoxFit.fill,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(100, 50, 100, 50),
                child: Text(
                  imageTitle,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
