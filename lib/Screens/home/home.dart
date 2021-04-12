import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nibab/components/search_bar.dart';
import 'package:nibab/components/tab_elements.dart';
import 'package:nibab/constants/book_list.dart';
import 'package:nibab/constants/categories.dart';

class Home extends StatefulWidget {
  static const String id = 'home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double widthWindow = MediaQuery.of(context).size.width;
    //double heightWindow = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFF1F0F0),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
        elevation: 2.0,
        backgroundColor: Color(0xFF00d6ad),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  child: Icon(
                    Icons.home,
                    color: Color(0xFF00d6ad),
                    size: 30,
                  ),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.category_outlined,
                    color: Color(0xFF00d6ad),
                    size: 30,
                  ),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Color(0xFF00d6ad),
                    size: 30,
                  ),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.person_outline,
                    color: Color(0xFF00d6ad),
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        notchMargin: 6,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: widthWindow,
                          height: 260,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'images/chuttersnap-AG2Ct_DqCh0-unsplash.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          width: widthWindow,
                          height: 290,
                        ),
                      ],
                    ),
                    Positioned(
                      top: 30,
                      left: 20,
                      right: 20,
                      child: Center(child: SearchBar()),
                    ),
                    Positioned(
                      top: 100,
                      left: 20,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(17),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 2,
                              blurRadius: 25,
                              offset:
                                  Offset(0, 5), // changes position of shadow
                            ),
                          ],
                        ),
                        width: widthWindow,
                        height: 420,
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Discover new',
                                        style: TextStyle(
                                            fontSize: 25.0,
                                            fontFamily: 'Alice',
                                            color: Color(0xFF030925)),
                                      ),
                                      Text(
                                        'Hunt new books and buy them online',
                                        style: TextStyle(
                                          color: Colors.grey.shade400,
                                          fontSize: 14.0,
                                          fontFamily: 'SourceSansPro',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'See all',
                                    style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 15.0,
                                      fontFamily: 'SourceSansPro',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Container(
                                width: widthWindow,
                                height: 280.0,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  //shrinkWrap: true,
                                  itemCount: bookList.length,
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: <Widget>[
                                        bookList[index],
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontFamily: 'Alice',
                            color: Color(0xFF030925)),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 15.0,
                          fontFamily: 'SourceSansPro',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: widthWindow,
                    height: 160.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      //shrinkWrap: true,
                      itemCount: bookCategory.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: <Widget>[
                            bookCategory[index],
                          ],
                        );
                      },
                    ),
                  ),
                ),
                // RaisedButton(
                //   onPressed: () async {
                //     await _auth.signOut();
                //   },
                //   child: Text('logout'),
                // )
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Trending',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontFamily: 'Alice',
                            color: Color(0xFF030925)),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 15.0,
                          fontFamily: 'SourceSansPro',
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    color: Colors.white,
                    elevation: 7,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          TabBar(
                            controller: _tabController,
                            labelColor: Colors.black,
                            indicatorColor: Color(0xFF00d6ad),
                            indicatorSize: TabBarIndicatorSize.label,
                            tabs: [
                              Tab(
                                // icon: Icon(Icons.ac_unit),
                                text: 'Paid',
                              ),
                              Tab(
                                //icon: Icon(Icons.ac_unit),
                                text: 'Exchange',
                              ),
                              Tab(
                                // icon: Icon(Icons.ac_unit),
                                text: 'Free',
                              ),
                            ],
                          ),
                          Container(
                            height: 180,
                            child: TabBarView(
                              controller: _tabController,
                              children: [
                                TabElements(
                                  image: AssetImage(
                                      'images/Time\'s arrow, or, The nature of - Martin Amis.jpg'),
                                  genre: 'Poetry',
                                  author: 'Martin Amis',
                                  title: 'Time\'s arrow, or, The nature of',
                                ),
                                TabElements(
                                    image: AssetImage(
                                        'images/The information - Martin Amis.jpg'),
                                    genre: 'sci-fi',
                                    author: 'Martin Amis',
                                    title: 'The information'),
                                TabElements(
                                  image: AssetImage(
                                      'images/The Power of Habit - Charles Duhigg.jpg'),
                                  genre: 'Self-help',
                                  author: 'Charles Duhigg',
                                  title: 'The Power of Habit',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
