import 'package:flutter/material.dart';
import 'package:nibab/components/page_indicator.dart';

class IntroScreenLayout extends StatelessWidget {
  IntroScreenLayout(
      {this.image,
      this.title,
      this.skipOrStart,
      this.onPressed,
      this.width1,
      this.boxShape1,
      this.width2,
      this.boxShape2,
      this.width3,
      this.boxShape3});

  final AssetImage image;
  final String title;
  final Function onPressed;
  final String skipOrStart;
  final double width1;
  final BoxShape boxShape1;
  final double width2;
  final BoxShape boxShape2;
  final double width3;
  final BoxShape boxShape3;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(image: image, fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'CinzelBold',
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur nab',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
                Text(
                  'Etiam pretium id diam eu iaculis dolor sit kuts',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                skipOrStart == 'Skip'
                    ? GestureDetector(
                        onTap: onPressed,
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            skipOrStart,
                            style: TextStyle(
                              fontSize: 17.0,
                              fontFamily: 'SourceSansPro',
                            ),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: onPressed,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 40),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(135)),
                            color: Color(0xFF030925),
                          ),
                          child: Text(
                            skipOrStart,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                              fontFamily: 'SourceSansPro',
                            ),
                          ),
                        ),
                      ),
                SizedBox(
                  height: 35.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PageIndicator(width1, boxShape1),
                    SizedBox(
                      width: 25.0,
                    ),
                    PageIndicator(width2, boxShape2),
                    SizedBox(
                      width: 25.0,
                    ),
                    PageIndicator(width3, boxShape3)
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
