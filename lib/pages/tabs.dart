import 'package:date2/pages/chat.dart';
import 'package:date2/pages/home.dart';
import 'package:date2/pages/loveRequest.dart';
import 'package:date2/pages/notification.dart';
import 'package:date2/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:date2/helper/style.dart' as style;

class Tabs extends StatefulWidget {
  static const String page_id = 'Tabs';

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: (TabBar(
          labelColor: style.appColor,
          unselectedLabelColor: Color.fromARGB(255, 185, 196, 207),
          labelPadding: EdgeInsets.symmetric(horizontal: 0),
          labelStyle: TextStyle(
            fontFamily: 'regular',
            fontSize: 18,
          ),
          onTap: (int index) => setState(() => _currentIndex = index),
          tabs: [
            Tab(
              icon: Icon(
                Icons.home_filled,
                color: _currentIndex == 0
                    ? style.appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.message,
                color: _currentIndex == 1
                    ? style.appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.favorite,
                color: _currentIndex == 2
                    ? style.appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.notifications,
                color: _currentIndex == 3
                    ? style.appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person,
                color: _currentIndex == 4
                    ? style.appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
            ),
          ],
        )),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            home(),
            chat(),
            loveRequest(),
            notification(),
            profile(),
          ],
        ),
      ),
    );
  }
}
