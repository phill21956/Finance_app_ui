import 'package:flutter/material.dart';
import 'package:payrush/config/palette.dart';

class SelectedWidget extends StatefulWidget {
  @override
  _SelectedWidgetState createState() => _SelectedWidgetState();
}

class _SelectedWidgetState extends State<SelectedWidget> {
  dynamic bankChoice;
  Function(Object) onChange;
  List listItem = ["FirstBank", "UBA", "Gt Bank", "Access"];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Palette.primaryColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: DropdownButton(
        hint: Text("select bank"),
        icon: Icon(Icons.arrow_drop_down,),
        iconSize: 36,
        isExpanded: true,
        dropdownColor: Palette.grey,
        value: bankChoice,
        onChanged: (newValue) {
          setState(() {
            bankChoice = newValue;
          });
        },
        items: listItem.map((bank) {
          return DropdownMenuItem(
            value: bank,
            child: Text(bank),
          );
        }).toList(),
      ),
    );
  }
}
