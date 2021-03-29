import 'package:flutter/material.dart';

InputDecoration buildInputDecoration({
  String labelText,
  bool showSuffix,
  bool isobscure,
  Icon iconData,
  Function onTap,
}) {
  if (!showSuffix) {
    return InputDecoration(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade300, width: 2),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF030925), width: 2),
      ),
      labelText: labelText,
      labelStyle: TextStyle(
          fontSize: 13.0,
          fontFamily: 'SourceSansProBold',
          color: Colors.grey.shade400),
    );
  } else {
    return InputDecoration(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade300, width: 2),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF030925), width: 2),
      ),
      labelText: labelText,
      labelStyle: TextStyle(
          fontSize: 13.0,
          fontFamily: 'SourceSansProBold',
          color: Colors.grey.shade400),
      suffixIcon: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: iconData,
        ),
      ),
    );
  }
}
