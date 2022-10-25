import 'package:date2/pages/home.dart';
import 'package:date2/pages/tabs.dart';
import 'package:date2/pages/verification.dart';
import 'package:flutter/material.dart';
import '../helper//style.dart' as style;
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  static const String page_id = 'Register';

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final maskFormatter = MaskTextInputFormatter(mask: '+## ##### #####');

  final TextEditingController numberController = TextEditingController();

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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 36),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Continue With Phone',
                  textAlign: TextAlign.center,
                  style: style.boldText(),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Text(
                  'Please enter your valid phone number. We will send you a 4 digit code to verify your account.',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 54.0,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: numberController,
                  decoration: InputDecoration(
                    hintText: "+62 XXXXX XXXXX",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  inputFormatters: [maskFormatter],
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
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            verification.page_id, (route) => false);
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
              ],
            ),
          )
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
