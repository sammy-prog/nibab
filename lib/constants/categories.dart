import 'package:flutter/material.dart';
import 'package:nibab/components/category_card.dart';

final List<Widget> bookCategory = <Widget>[
  CategoryCard(
      icon: Icons.apartment, catName: 'Architecture', catNumb: '25 books'),
  CategoryCard(
      icon: Icons.brush_outlined, catName: 'Design', catNumb: '15 books'),
  CategoryCard(
      icon: Icons.spa, catName: 'Poetry', catNumb: '57 books'),
  CategoryCard(
      icon: Icons.brunch_dining, catName: 'CookBook', catNumb: '8 books'),
];
