import 'package:date2/helper/style.dart' as style;
import 'package:flutter/material.dart';

class message extends StatefulWidget {
  message({Key? key}) : super(key: key);

  static const String page_id = 'message';

  @override
  _messageState createState() => _messageState();
}

class _messageState extends State<message> {
  List<Item> messages = <Item>[
    Item('left', 'Hey there! What\'s up>?'),
    Item(
        'right', 'Nothing. Just chilling and watching youtube What about you?'),
    Item('left', 'Same here! Been watching youtube for last 5 hours'),
    Item('right', 'Yeah i know. I am in same position'),
    Item('left', 'It\'s hard to be productive man '),
    Item('right', 'Sure thankyou'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: _buildFooter(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      title: Container(
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/women.jpg'),
              radius: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jaydeep Hirani',
                    style: TextStyle(
                      fontFamily: 'semi-bold',
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Online',
                    style: TextStyle(
                      fontFamily: 'regular',
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert),
          color: Colors.black,
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: messages.map((Item msg) {
          return msg.side == 'left'
              ? Container(
                  margin: EdgeInsets.only(bottom: 16),
                  width: MediaQuery.of(context).size.width - 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/women.jpg'),
                        radius: 20,
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  )),
                              child: Text(
                                msg.msg,
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8, left: 8),
                              child: Text(
                                '10:30 AM',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 16),
                          width: MediaQuery.of(context).size.width - 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.red[100],
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(15),
                                        bottomLeft: Radius.circular(5),
                                      )),
                                  child: Text(
                                    msg.msg,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: Text(
                        '10:30 AM',
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    )
                  ],
                );
        }).toList(),
      ),
    );
  }

  Widget _buildFooter() {
    return SingleChildScrollView(
      reverse: true,
      child: Container(
        decoration: BoxDecoration(
            border: Border(
          top: BorderSide(
            width: 1,
            color: Colors.grey.shade300,
          ),
        )),
        child: Container(
          height: 50,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey.shade300),
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          child: Row(
            children: <Widget>[
              InkWell(
                child: Container(
                  height: 35,
                  width: 35,
                  child: Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Write a message...'),
                ),
              ),
              InkWell(
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: style.appColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      )),
                  child: Icon(
                    Icons.near_me,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
    );
  }
}

class Item {
  const Item(this.side, this.msg);
  final String side;
  final String msg;
}
