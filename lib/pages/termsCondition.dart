import 'package:date2/pages/setLocation.dart';
import 'package:flutter/material.dart';
import 'package:date2/helper/style.dart' as style;

class termsCondition extends StatefulWidget {
  termsCondition({Key? key}) : super(key: key);

  static const String page_id = 'Terms Condition';

  @override
  _termsConditionState createState() => _termsConditionState();
}

class _termsConditionState extends State<termsCondition> {
  bool value = true;
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
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new setLocation()));
              },
              label: Text(
                'Agree',
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
          'Terms & Conditions',
          style: style.headText(),
        ));
  }

  Widget _buildBody(context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: 8.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Please read carefully our terms & condotions',
                  style: style.headText(),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry Lorem Ipsum has been the industry',
                  style: style.simpleText(),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      activeColor: Color(0xFF3dc2ff),
                      value: this.value,
                      onChanged: (bool) {
                        setState(() {
                          this.value = value;
                        });
                      },
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Be Yourself',
                      style: style.headText(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 36.0),
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                    style: style.simpleText(),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      activeColor: Color(0xFF3dc2ff),
                      value: this.value,
                      onChanged: (bool) {
                        setState(() {
                          this.value = value;
                        });
                      },
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Stay Safe',
                      style: style.headText(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 36.0),
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                    style: style.simpleText(),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      activeColor: Color(0xFF3dc2ff),
                      value: this.value,
                      onChanged: (bool) {
                        setState(() {
                          this.value = value;
                        });
                      },
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Stay Safe',
                      style: style.headText(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 36.0),
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                    style: style.simpleText(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
