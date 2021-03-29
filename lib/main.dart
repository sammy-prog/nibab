import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nibab/Screens/authentication/login.dart';
import 'package:nibab/Screens/authentication/signup.dart';
import 'package:nibab/Screens/first_screen.dart';
import 'package:nibab/Screens/home/home.dart';
import 'package:nibab/Screens/wrapper.dart';

import 'package:shared_preferences/shared_preferences.dart';


int initScreen;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = prefs.getInt("initScreen");
  await prefs.setInt("initScreen", 1);
  print('initScreen $initScreen');
  await Firebase.initializeApp();
  runApp(Nibab());
}


class Nibab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: initScreen == 0 || initScreen == null ? FirstScreen.id : Wrapper.id,
     // initialRoute: FirstScreen.id,
      routes: {
          FirstScreen.id : (context) => FirstScreen(), 
          Login.id : (context) => Login(),
          Signup.id: (context) => Signup(),
          Wrapper.id: (context) => Wrapper(),
          Home.id: (context) => Home(),
      },
    );
  }
}