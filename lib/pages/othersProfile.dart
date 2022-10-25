import 'package:date2/helper/style.dart';
import 'package:flutter/material.dart';

class othersProfile extends StatefulWidget {
  othersProfile({Key? key}) : super(key: key);

  static const String page_id = 'Others Profile';

  @override
  _othersProfileState createState() => _othersProfileState();
}

class _othersProfileState extends State<othersProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 250,
              color: Colors.white,
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/women.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 40),
                  height: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                              color: Colors.white,
                              icon: Icon(Icons.arrow_back),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 200,
                                child: Text(
                                  'Eleanor Pena',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  softWrap: false,
                                  style: boldText(),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: appColor,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: Text(
                                      '5.2 km away',
                                      style: simpleText(),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      softWrap: false,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.red.shade100,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '3.4k',
                                style: simpleText(),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.favorite_border,
                                color: appColor,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      children: [
                        Text(
                          'About',
                          style: headText(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                      style: simpleText(),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      children: [
                        Text(
                          'Interest',
                          style: headText(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.symmetric(
                        horizontal: 5.0,
                      ),
                      child: Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.check),
                          label: Text('Travelling'),
                          style: ElevatedButton.styleFrom(
                            shadowColor: Color(0xFF3dc2ff),
                            primary: Color(0xFF3dc2ff),
                            padding: EdgeInsets.symmetric(
                                vertical: 16, horizontal: 10),
                            textStyle: TextStyle(fontSize: 14),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        elevatedButton('Books'),
                        SizedBox(
                          width: 15,
                        ),
                        elevatedButton('Music'),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        elevatedButton('Dancing'),
                        SizedBox(
                          width: 15,
                        ),
                        elevatedButton('Modeling')
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Icon(
                              Icons.close,
                              color: Colors.black54,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red[100],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.red.shade50,
                              radius: 30,
                              child: Icon(
                                Icons.favorite,
                                color: appColor,
                                size: 30,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Icon(
                              Icons.star,
                              color: Color(0xFF3dc2ff),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget elevatedButton(txt) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        txt,
      ),
      style: ElevatedButton.styleFrom(
        shadowColor: Color(0xFFDDEFF4),
        onPrimary: Colors.black87,
        onSurface: Colors.black87,
        primary: Color(0xFFDDEFF4),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 14),
        textStyle: TextStyle(fontSize: 14),
      ),
    );
  }
}
