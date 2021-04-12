import 'package:flutter/material.dart';

class TabElements extends StatelessWidget {
   TabElements({@required this.image,@required this.genre, @required this.author, @required this.title });

    final AssetImage image;
    final String genre;
    final String author;
    final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        // mainAxisAlignment:
        //     MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
              height: 130,
              width: 110,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: image,
                    fit: BoxFit.fill),
                borderRadius:
                    BorderRadius.circular(7),
              ),
            ),
          ),
          SizedBox(width: 25),
          Padding(
            padding:
                const EdgeInsets.only(top: 35.0),
            child: Container(
              width: 100,
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.cyan.shade50,
                    child: Padding(
                      padding:
                          const EdgeInsets.all(5.0),
                      child: Text(
                        genre,
                        style: TextStyle(
                          fontSize: 13.0,
                          fontFamily:
                              'SourceSansPro',
                          color: Color(0xFF00d6ad),
                          // backgroundColor: Colors.green.shade200,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
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
                      fontFamily:
                          'SourceSansProBold',
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 15),
          Container(
            child: Icon(
              Icons.chevron_right_outlined,
              size: 30,
              color: Colors.grey.shade400,
          ),)
        ],
      ),
    );
  }
}