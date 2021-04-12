
import 'package:flutter/material.dart';
import 'package:nibab/Screens/authentication/authenticate.dart';
import 'package:nibab/Screens/home/home.dart';
import 'package:nibab/models/extractred_user.dart';
import 'package:provider/provider.dart';


class Wrapper extends StatelessWidget {
  static const String id = 'wrapper';
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<ExtractedUser>(context);
    print(user);
    if(user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}