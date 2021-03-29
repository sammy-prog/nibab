import 'package:flutter/material.dart';
import 'package:nibab/Screens/wrapper.dart';
import 'package:nibab/components/intro_screen_layout.dart';

class FirstScreen extends StatefulWidget {
  static const String id = 'intro';
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: controller,
          children: <Widget>[
            IntroScreenLayout(
              image: AssetImage('images/hjkl.jpg'),
              title: 'Select a Book',
              skipOrStart: 'Skip',
              onPressed: () {
                setState(() {
                  controller.jumpToPage(2);
                });
              },
              width1: 29,
              boxShape1: BoxShape.rectangle,
              width2: 6,
              boxShape2: BoxShape.circle,
              width3: 6,
              boxShape3: BoxShape.circle,
            ),
            IntroScreenLayout(
              image: AssetImage('images/2kj561345.jpg'),
              title: 'Purchase Online',
              skipOrStart: 'Skip',
              onPressed: () {
                setState(() {
                  controller.jumpToPage(2);
                });
              },
              width1: 6,
              boxShape1: BoxShape.circle,
              width2: 29,
              boxShape2: BoxShape.rectangle,
              width3: 6,
              boxShape3: BoxShape.circle,
            ),
            IntroScreenLayout(
              image: AssetImage('images/6447.jpg'),
              title: 'Free Deliverey',
              skipOrStart: 'Get Started',
              onPressed: () {
                setState(() {
                  Navigator.pushNamed(context, Wrapper.id);
                });
              },
              width1: 6,
              boxShape1: BoxShape.circle,
              width2: 6,
              boxShape2: BoxShape.circle,
              width3: 29,
              boxShape3: BoxShape.rectangle,
            ),
          ],
        ),
      ),
    );
  }
}
