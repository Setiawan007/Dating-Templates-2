import 'package:date2/pages/home.dart';
import 'package:date2/pages/tabs.dart';
import 'package:flutter/material.dart';
import 'package:date2/helper/style.dart' as style;

class interestedIn extends StatefulWidget {
  interestedIn({Key? key}) : super(key: key);

  static const String page_id = 'Interested In';

  @override
  _interestedInState createState() => _interestedInState();
}

class _interestedInState extends State<interestedIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(context),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 10.0),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => Tabs()));
              },
              label: Text(
                'Continue',
                style: TextStyle(fontFamily: 'medium'),
              ),
              icon: const Icon(Icons.arrow_right_alt_outlined),
              style: style.simpleButton(),
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      title: Text(
        'Interested In',
        style: style.headText(),
      ),
    );
  }

  Widget _buildBody(context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 32.0,
              ),
              const Image(
                image: AssetImage('assets/images/p3.png'),
                width: 200,
              ),
              SizedBox(
                height: 30.0,
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
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 10),
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
            ],
          )
        ],
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
