import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(right: 26.0, left: 21.0),
      decoration: BoxDecoration(
       // borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 2,
            blurRadius: 25,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        onChanged: (value) {
          //Do something with the user input.
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
            size: 20.0,
          ),
          suffixIcon: GestureDetector(
            child: Icon(
              Icons.location_on_outlined,
              color: Colors.grey,
              size: 20.0,
            ),
            onTap: () {
              print('filter');
              // Navigator.pushNamed(context, Filter.id);
            },
          ),
          contentPadding: EdgeInsets.all(12.0),
          hintText: 'Search by Name or Author...',
          hintStyle: TextStyle(
              color: Colors.black38, fontSize: 15.0, fontFamily: 'sans'),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(17.0)),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white54, ),
            borderRadius: BorderRadius.all(Radius.circular(17.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white54, ),
            borderRadius: BorderRadius.all(Radius.circular(17.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white54),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
      ),
    );
  }
}
