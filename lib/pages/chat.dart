import 'package:date2/pages/message.dart';
import 'package:flutter/material.dart';
import 'package:date2/helper/style.dart' as style;

class chat extends StatefulWidget {
  chat({Key? key}) : super(key: key);

  static const String page_id = 'Chat';

  @override
  _chatState createState() => _chatState();
}

class _chatState extends State<chat> {
  List<int> text = [1, 2, 3, 4, 5, 6, 7];
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
        'Chat',
        style: style.headText(),
      ),
      automaticallyImplyLeading: false,
    );
  }

  Widget _buildBody(context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            style.searchbar('Search Matches'),
            SizedBox(
              height: 20,
            ),
            Text(
              'New Matches',
              style: style.simpleBoldText(),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  chatProfile('assets/images/woman2.jpg'),
                  chatProfile('assets/images/women.jpg'),
                  chatProfile('assets/images/girl.jpg'),
                  chatProfile('assets/images/profile.jpg'),
                  chatProfile('assets/images/women.jpg'),
                  chatProfile('assets/images/woman2.jpg'),
                  chatProfile('assets/images/women.jpg'),
                  chatProfile('assets/images/girl.jpg'),
                  chatProfile('assets/images/profile.jpg'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Messages',
                  style: style.simpleBoldText(),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(10),
                    child: FittedBox(
                      child: Text('10'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            for (var i in text)
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new message()));
                },
                child: slidersContent(),
              ),
          ],
        ),
      ),
    );
  }
}

Widget chatProfile(img) {
  return Padding(
    padding: EdgeInsets.only(right: 5),
    child: Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: SizedBox.fromSize(
          size: Size.fromRadius(30),
          child: FittedBox(
            child: Image(image: AssetImage(img)),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
  );
}

Widget slidersContent() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpg'),
              radius: 25,
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200,
                  child: Text(
                    'Jaydeep Hirani',
                    style: style.simpleBoldText(),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                  ),
                ),
                SizedBox(
                  height: 1.0,
                ),
                SizedBox(
                  width: 200,
                  child: Text(
                    'Hello guys, we have disscuss...',
                    style: style.simpleText(),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ],
        ),
        Text(
          '10:30',
          style: style.simpleText(),
        ),
      ],
    ),
  );
}
