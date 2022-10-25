import 'package:flutter/material.dart';
import 'package:date2/helper/style.dart' as style;

class notification extends StatefulWidget {
  notification({Key? key}) : super(key: key);

  static const String page_id = 'Notification';

  @override
  _notificationState createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(context),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        'Notification',
        style: style.headText(),
      ),
      automaticallyImplyLeading: false,
    );
  }

  Widget _buildBody(context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Today',
                  style: style.simpleBoldText(),
                ),
                Text(
                  'Clear All',
                  style: style.simpleText(),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            notificationList(),
            notificationList(),
            notificationList(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Yesterday',
                  style: style.simpleBoldText(),
                ),
                Text(
                  'Clear All',
                  style: style.simpleText(),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            notificationList(),
            notificationList(),
            notificationList(),
          ],
        ),
      ),
    );
  }
}

Widget notificationList() {
  return Padding(
    padding: EdgeInsets.only(bottom: 20),
    child: Container(
      padding: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 1, color: Colors.grey.shade300))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/girl.jpg'),
                radius: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Easter Howerds',
                        style: TextStyle(
                          fontFamily: 'semi-bold',
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Likes your profile',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                        style: TextStyle(
                          fontFamily: 'regular',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        '3 hours',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                        style: TextStyle(
                          fontFamily: 'regular',
                          fontSize: 12,
                          color: Color(0xFF3dc2ff),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            child: Text(
              'New',
              style: style.simpleText(),
            ),
          )
        ],
      ),
    ),
  );
}
