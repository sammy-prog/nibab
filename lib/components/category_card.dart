import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard(
      {@required this.icon, @required this.catName, @required this.catNumb});
  final IconData icon;
  final String catName;
  final String catNumb;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Card(
          elevation: 7,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                ),
                Icon(
                  icon,
                  color: Color(0xFF00d6ad),
                  size: 40,
                ),
                SizedBox(height: 5),
                Text(
                  catName,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xFF00d6ad),
                    fontSize: 15.0,
                    fontFamily: 'SourceSansProBold',
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  catNumb,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xFF00d6ad),
                    fontSize: 15.0,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
