import 'package:flutter/material.dart';
import 'package:payrush/config/palette.dart';

class InputWidget extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final bool isPassword;
  final bool isEmail;
  final Function(String) onChange;

  const InputWidget(
      { key,
      this.icon,
       this.hintText,
     this.isPassword,
     this.isEmail,
       this.onChange})
      ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextField(
        onChanged: onChange,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        obscureText: isPassword,
        decoration: InputDecoration(
            fillColor: Palette.grey,
            prefixIcon: Icon(
              icon,
              color: Palette.black.withOpacity(0.1),
              size: 28,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Palette.black.withOpacity(0.1),
                width: 1,
              ),
              borderRadius: BorderRadius.all(Radius.circular(7.0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Palette.secondaryColor.withOpacity(0.5),
                width: 1,
              ),
              borderRadius: BorderRadius.all(Radius.circular(7.0)),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            hintText: hintText,
            filled: true,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            )),
      ),
    );
  }
}
