import 'package:date2/pages/termsCondition.dart';
import 'package:flutter/material.dart';
import 'package:date2/helper/style.dart' as style;

class profileSetup extends StatefulWidget {
  profileSetup({Key? key}) : super(key: key);

  static const String page_id = 'Profile Setup';

  @override
  _profileSetupState createState() => _profileSetupState();
}

class _profileSetupState extends State<profileSetup> {
  get prefixIcon => null;
  String gender = '';
  DateTime date = DateTime(2022, 12, 24);
  String _selectedGender = 'male';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: SingleChildScrollView(
        reverse: true,
        child: _buildBody(context),
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      ),
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
                        builder: (context) => new termsCondition()));
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
          'Profile Setup',
          style: style.headText(),
        ));
  }

  Widget _buildBody(context) {
    return Padding(
      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 24.0),
            child: Column(
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
                  height: 24.0,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "First Name",
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Color.fromRGBO(246, 81, 95, 1),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Last Name",
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Color.fromRGBO(246, 81, 95, 1),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          onPressed: () async {
                            DateTime? newDate = await showDatePicker(
                              context: context,
                              initialDate: date,
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100),
                              helpText: 'Birth Date',
                            );
                            if (newDate == null) return;
                            setState(() => date = newDate);
                          },
                          icon: Icon(
                            Icons.calendar_today_outlined,
                            color: Color.fromRGBO(246, 81, 95, 1),
                          ),
                          label: Text(
                            '${date.day}/${date.month}/${date.year}',
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.red.shade50,
                              onPrimary: Color.fromRGBO(246, 81, 95, 1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                              padding: const EdgeInsets.all(25.0),
                              textStyle: TextStyle(
                                color: Color.fromRGBO(246, 81, 95, 1),
                                fontSize: 18,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Radio(
                          value: "male",
                          activeColor: Color.fromRGBO(246, 81, 95, 1),
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value.toString();
                            });
                          }),
                      Text('Male'),
                      Radio(
                          value: "female",
                          activeColor: Color.fromRGBO(246, 81, 95, 1),
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value.toString();
                            });
                          }),
                      Text('Female'),
                    ],
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
