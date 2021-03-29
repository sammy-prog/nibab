import 'package:flutter/material.dart';

class ButtonContainer extends StatelessWidget {
  ButtonContainer({this.onPressed, this.buttonTitle});
  final String buttonTitle;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 2,
            blurRadius: 25,
            offset: Offset(0, 7), // changes position of shadow
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Color(0xFF030925),
            ),
          ),
          onPressed: onPressed,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                buttonTitle,
                style: TextStyle(
                  fontSize: 17.0,
                  fontFamily: 'SourceSansPro',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}