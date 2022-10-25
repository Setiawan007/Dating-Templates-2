import 'package:date2/pages/chat.dart';
import 'package:date2/pages/home.dart';
import 'package:date2/pages/interested.dart';
import 'package:date2/pages/loveRequest.dart';
import 'package:date2/pages/match.dart';
import 'package:date2/pages/message.dart';
import 'package:date2/pages/notification.dart';
import 'package:date2/pages/othersProfile.dart';
import 'package:date2/pages/profile.dart';
import 'package:date2/pages/register.dart';
import 'package:date2/pages/setLocation.dart';
import 'package:date2/pages/tabs.dart';
import 'package:date2/pages/termsCondition.dart';
import 'package:date2/pages/verification.dart';
import 'package:date2/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'pages/slider.dart';
import './helper/style.dart' as style;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Date Two',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: style.appColor,
            fontFamily: 'regular'),
        home: SliderScreen(),
        routes: {
          SliderScreen.page_id: (context) => SliderScreen(),
          WelcomePage.page_id: (context) => WelcomePage(),
          RegisterScreen.page_id: (context) => RegisterScreen(),
          verification.page_id: (context) => verification(),
          termsCondition.page_id: (context) => termsCondition(),
          setLocation.page_id: (context) => setLocation(),
          interestedIn.page_id: (context) => interestedIn(),
          home.page_id: (context) => home(),
          Tabs.page_id: (context) => Tabs(),
          chat.page_id: (context) => chat(),
          loveRequest.page_id: (context) => loveRequest(),
          notification.page_id: (context) => notification(),
          profile.page_id: (context) => profile(),
          message.page_id: (context) => message(),
          othersProfile.page_id: (context) => othersProfile(),
          match.page_id: (context) => match(),
        });
  }
}
