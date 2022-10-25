import 'package:flutter/material.dart';
import 'package:date2/helper/style.dart' as style;

class match extends StatefulWidget {
  match({Key? key}) : super(key: key);

  static const String page_id = "Match";

  @override
  _matchState createState() => _matchState();
}

class _matchState extends State<match> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade400,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              child: Column(
                children: [
                  Text(
                    'Congratulation',
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'bold',
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'It\'s match',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'semi-bold',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 75,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/man.jpg'),
                      radius: 70,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 75,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/women.jpg'),
                      radius: 70,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    'You liked each other!',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'regular',
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Start conversation now.',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'regular',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
