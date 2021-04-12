import 'package:flutter/material.dart';

class ScrollElements extends StatelessWidget {
  ScrollElements(
      {@required this.image, @required this.author, @required this.title});
  final AssetImage image;
  final String author;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        width: 160,
        child: Padding(
          padding: const EdgeInsets.only(right: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 220,
                width: 140,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: image,
                    fit: BoxFit.fill
                  ),
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              SizedBox(height: 5),
              Text(
                author,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 14.0,
                  fontFamily: 'SourceSansPro',
                ),
              ),
              SizedBox(height: 5),
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color(0xFF030925),
                  fontSize: 15.0,
                  fontFamily: 'SourceSansProBold',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
