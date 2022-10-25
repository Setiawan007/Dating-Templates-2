import 'package:date2/pages/filter.dart';
import 'package:date2/pages/match.dart';
import 'package:date2/pages/othersProfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date2/helper/style.dart' as style;
import 'package:swiping_card_deck/swiping_card_deck.dart';
import 'dart:math' as math;

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  static const String page_id = "Home";

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int? groupValue = 0;
  bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: buildCards(),
    );
  }

  void updateData() {
    setState(() {
      isEmpty = true;
    });
    print('update' + isEmpty.toString());
  }

  Widget buildCards() {
    final SwipingCardDeck deck = SwipingCardDeck(
      cardDeck: getCardDeck(),
      onDeckEmpty: () => updateData(),
      onLeftSwipe: (Card card) => debugPrint("Swiped left!"),
      onRightSwipe: (Card card) => debugPrint("Swiped right!"),
      cardWidth: 200,
      swipeThreshold: MediaQuery.of(context).size.width / 3,
      minimumVelocity: 1000,
      rotationFactor: 0.8 / 3.14,
      swipeAnimationDuration: const Duration(milliseconds: 500),
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        deck,
        Container(
          padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: IconButton(
                  icon: const Icon(Icons.close),
                  iconSize: 30,
                  color: Colors.black54,
                  onPressed:
                      deck.animationActive ? null : () => deck.swipeLeft(),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.red.shade50,
                  radius: 30,
                  child: IconButton(
                    icon: const Icon(Icons.favorite),
                    iconSize: 30,
                    color: style.appColor,
                    onPressed:
                        deck.animationActive ? null : () => deck.swipeRight(),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: IconButton(
                  icon: const Icon(Icons.star),
                  iconSize: 30,
                  color: Colors.green,
                  onPressed:
                      deck.animationActive ? null : () => deck.swipeRight(),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  List<Card> getCardDeck() {
    List<Card> cardDeck = [];
    List<Map<String, dynamic>> send = [];

    send = [
      {
        'img': 'assets/images/user1.jpg',
        'name': 'Mausam',
        'status': '0',
        'time': '6:00 pm',
        'callType': 'call',
        'calltime': '7 May, 8:42 pm',
        'callstatus': '1',
      },
      {
        'img': 'assets/images/user2.jpg',
        'name': 'Rahul',
        'status': '1',
        'time': '5:00 pm',
        'callType': 'call',
        'calltime': '5 May, 6:00 pm',
        'callstatus': '1',
      },
      {
        'img': 'assets/images/user3.jpg',
        'name': 'Krishna',
        'status': '2',
        'time': '3:30 pm',
        'callType': 'call',
        'calltime': '1 April, 8:00 pm',
        'callstatus': '1',
      },
      {
        'img': 'assets/images/user4.jpg',
        'name': 'David',
        'status': '0',
        'time': '12:30 pm',
        'callType': 'video',
        'calltime': '25 April, 8:00 am',
        'callstatus': '0',
      },
      {
        'img': 'assets/images/user5.jpg',
        'name': 'Jonh',
        'status': '1',
        'time': 'Yesterday',
        'callType': 'video',
        'calltime': '23 April, 7:00 pm',
        'callstatus': '1',
      },
      {
        'img': 'assets/images/user6.jpg',
        'name': 'Mike',
        'status': '2',
        'time': 'Yesterday',
        'callType': 'call',
        'calltime': '19 April, 8:42 pm',
        'callstatus': '1',
      },
      {
        'img': 'assets/images/user7.jpg',
        'name': 'Joseph',
        'status': '2',
        'time': 'Yesterday',
        'callType': 'video',
        'calltime': '19 April, 6:42 pm',
        'callstatus': '0',
      },
      {
        'img': 'assets/images/user8.jpg',
        'name': 'Alize',
        'status': '2',
        'time': '07/05/20',
        'callType': 'video',
        'calltime': '17 April, 5:00 pm',
        'callstatus': '0',
      },
      {
        'img': 'assets/images/user9.jpg',
        'name': 'Emma',
        'status': '1',
        'time': '07/05/20',
        'callType': 'call',
        'calltime': '15 April, 9:00 am',
        'callstatus': '1',
      },
      {
        'img': 'assets/images/user10.jpg',
        'name': 'Sophia',
        'status': '1',
        'time': '05/05/20',
        'callType': 'call',
        'calltime': '10 April, 10:00 pm',
        'callstatus': '1',
      },
    ];
    for (var item in send) {
      cardDeck.add(
        Card(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    _swipe(
                        // AssetImage('assets/images/women.jpg'),
                        AssetImage(item['img']),
                        'Bali Indonesia',
                        item['name'],
                        '5.2 km away', () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new othersProfile()));
                    }),
                  ],
                ),
              ],
            ),
          ),
        )),
      );
    }

    return cardDeck;
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            style.searchbar('Search girl'),
            SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: () => {
                Navigator.of(context).push(new MaterialPageRoute<Null>(
                    builder: (BuildContext context) {
                      return filter();
                    },
                    fullscreenDialog: true)),
              },
              icon: Icon(
                Icons.format_align_left_rounded,
                color: Colors.black54,
                size: 36,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _swipe(img, location, name, distance, tap) {
  return Container(
    height: 400,
    width: 400,
    decoration: BoxDecoration(
      image: DecorationImage(image: img, fit: BoxFit.cover),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 18,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(location),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: tap,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          name,
                          style: style.headText(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          distance,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Icon(
                      Icons.chevron_right,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
