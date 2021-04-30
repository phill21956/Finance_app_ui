import 'package:flutter/material.dart';

class SubProfileListWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  final Function() press;

  const SubProfileListWidget(
      {Key key,
       this.title,
       this.subTitle,
       this.icon,
       this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: press,
        leading: Container(
          height: 44,
          width: 44,
          decoration: BoxDecoration(
            color: Color.fromRGBO(37, 172, 132, 0.29),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          subTitle,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward,
        ),
      ),
    );
  }
}
