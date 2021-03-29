import 'package:flutter/material.dart';
import 'package:nibab/Screens/authentication/authenticate.dart';
import 'package:nibab/Screens/home/home.dart';


class Wrapper extends StatelessWidget {
  static const String id = 'wrapper';
  @override
  Widget build(BuildContext context) {
    //return home or login
    return Authenticate();
  }
}