import 'package:flutter/material.dart';
import 'package:nibab/components/scroll_elements.dart';

final List<Widget> bookList = <Widget>[
  ScrollElements(
      image: AssetImage('images/Jane Eyre - Charlotte Bronte.jpg'),
      author: 'Charlotte Bronte',
      title: 'Jane Eyre'
  ),
  ScrollElements(
      image: AssetImage('images/The information - Martin Amis.jpg'),
      author: 'Martin Amis',
      title: 'The information'
  ),
  ScrollElements(
      image: AssetImage('images/The Sun Also Rises - Ernest Hemingway.jpg'),
      author: 'Ernest Hemingway',
      title: 'The Sun Also Rises'
  ),
  ScrollElements(
      image: AssetImage('images/Time\'s arrow, or, The nature of - Martin Amis.jpg'),
      author: 'Martin Amis',
      title: 'Time\'s arrow, or, The nature of'
  ),
  ScrollElements(
      image: AssetImage('images/The Power of Habit - Charles Duhigg.jpg'),
      author: 'Charles Duhigg',
      title: 'The Power of Habit'
  ),
  ScrollElements(
      image: AssetImage('images/The sound and the fury - William Faulkner.jpg'),
      author: 'William Faulkner',
      title: 'The sound and the fury'
  ),
];
