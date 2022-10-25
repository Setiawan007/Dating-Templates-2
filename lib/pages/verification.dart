import 'package:date2/pages/profileSetup.dart';
import 'package:flutter/material.dart';
import 'package:date2/helper/style.dart' as style;
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class verification extends StatefulWidget {
  verification({Key? key}) : super(key: key);

  static const String page_id = 'Verification';

  @override
  _verificationState createState() => _verificationState();
}

class _verificationState extends State<verification> {
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
    );
  }

  Widget _buildBody(context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 24,
        left: 24,
        right: 24,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 36),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'OTP Code',
                  textAlign: TextAlign.center,
                  style: style.boldText(),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Text(
                  'Type the verification code that we\'ve sent you.',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 36.0,
                ),
                OTPTextField(
                  length: 4,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 60,
                  style: TextStyle(fontSize: 16),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.box,
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  },
                ),
                SizedBox(
                  height: 24.0,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 20.0),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => profileSetup()));
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
                SizedBox(
                  height: 24.0,
                ),
                Text(
                  'Send Again',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(246, 81, 95, 1),
                    fontSize: 16.0,
                    fontFamily: 'semi-bold',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    );
  }
}
