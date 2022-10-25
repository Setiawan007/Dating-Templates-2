import 'package:flutter/material.dart';
import 'package:date2/helper/style.dart' as style;

class profile extends StatefulWidget {
  // profile({Key? key}) : super(key: key);

  static const String page_id = 'Profile';

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  List<String> images = [
    'assets/images/women.jpg',
    'assets/images/woman2.jpg',
    'assets/images/man.jpg',
    'assets/images/girl.jpg',
    'assets/images/profile.jpg',
    'assets/images/women.jpg',
    'assets/images/woman2.jpg',
    'assets/images/man.jpg',
    'assets/images/girl.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Text(
        'Profile',
        style: style.headText(),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert),
          color: Colors.black,
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/women.jpg'),
                      radius: 50,
                    ),
                    Positioned(
                      bottom: -5,
                      right: -10,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: style.appColor,
                            child: IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Rahul Jograna',
                  style: style.boldText(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: style.appColor,
                      size: 20,
                    ),
                    Text(
                      'Bali Indonesia',
                      style: style.simpleText(),
                    ),
                  ],
                ),
                Text(
                  'rahuljograna@gmail.com',
                  style: style.simpleText(),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.red.shade50,
                      border: Border.all(color: style.appColor)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '206',
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'bold',
                                color: style.appColor,
                              ),
                            ),
                            Text(
                              'Love Request',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'regular',
                                color: style.appColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '480',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'semi-bold',
                              color: style.appColor,
                            ),
                          ),
                          Text(
                            'Love Processing',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'regular',
                              color: style.appColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    imagePost(),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget imagePost() {
    return GridView.count(
      primary: false,
      crossAxisCount: 3,
      shrinkWrap: true,
      childAspectRatio: 90 / 100,
      padding: EdgeInsets.only(top: 16, left: 16, bottom: 16),
      children: List.generate(images.length, (index) {
        return Container(
          child: Stack(
            children: <Widget>[
              Container(
                  height: double.infinity,
                  margin: EdgeInsets.only(right: 16, bottom: 16),
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(images[index]), fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  )),
            ],
          ),
        );
      }),
    );
  }
}
