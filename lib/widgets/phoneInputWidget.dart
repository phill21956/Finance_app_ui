import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:payrush/config/palette.dart';

class PhoneInputWidget extends StatefulWidget {

  final Function(String) onChange;

  const PhoneInputWidget({ this.onChange});

  @override
  _PhoneInputWidgetState createState() => _PhoneInputWidgetState();
}

class _PhoneInputWidgetState extends State<PhoneInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(7),
          border: Border.all(
            color: Palette.black.withOpacity(0.1),
          ),
          color: Palette.grey),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CountryCodePicker(
            onChanged: print,
            initialSelection: 'NG',
          ),
          Container(
            height: 40,
            width: 1,
            color: Colors.black.withOpacity(0.3),
          ),
          Expanded(
            child: TextField(
              onChanged: widget.onChange,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  fillColor: Palette.grey,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Palette.grey,
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
                  contentPadding: EdgeInsets.all(10),
                  hintText: "9999999999",
                  filled: true,
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
