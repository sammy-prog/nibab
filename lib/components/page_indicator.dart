
import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  PageIndicator(this.width, this.shape);
  final double width;
  final BoxShape shape;
  @override
  Widget build(BuildContext context) {
    if(width !=6) {
      return Container(
      height: 6,
      width: width,
        decoration: BoxDecoration(
        shape: shape,
        borderRadius: BorderRadius.all(Radius.circular(4)),
        color: Colors.blueAccent,
        ),
     );
    } 
    return Container(
      height: 6,
      width: width,
        decoration: BoxDecoration(
        shape: shape,
        color: Colors.blueAccent,
        ),
    );
    
  }
}
