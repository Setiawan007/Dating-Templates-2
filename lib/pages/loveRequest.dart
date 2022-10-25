import 'package:flutter/material.dart';
import 'package:date2/helper/style.dart' as style;
import 'package:flutter/rendering.dart';

class loveRequest extends StatefulWidget {
  loveRequest({Key? key}) : super(key: key);

  static const String page_id = 'Love Request';

  @override
  _loveRequestState createState() => _loveRequestState();
}

class _loveRequestState extends State<loveRequest> {
  List<int> text = [1, 2, 3, 4, 5];

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
      elevation: 0,
      title: Text(
        'Love Request',
        style: style.headText(),
      ),
      automaticallyImplyLeading: false,
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            style.searchbar('Search'),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                '30 request',
                style: style.simpleText(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            for (var i in text) requestList()
          ],
        ),
      ),
    );
  }

  Widget requestList() {
    return Container(
      height: 90.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: bottomBorder(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(30),
                  child: FittedBox(
                    child: Image.asset('assets/images/women.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150,
                    child: Text(
                      'Darian Don',
                      style: style.simpleBoldText(),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: Text(
                      'greate do you love it..000000000',
                      style: style.simpleText(),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: Text(
                      '3 hours ago',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: TextStyle(
                        fontFamily: 'regular',
                        fontSize: 12,
                        color: Color(0xFF3dc2ff),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.red[50],
                  child: IconButton(
                    icon: Icon(
                      Icons.close,
                      color: style.appColor,
                      size: 15,
                    ),
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Color(0xFF3dc2ff),
                  child: IconButton(
                    icon: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 15,
                    ),
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  bottomBorder() {
    return BoxDecoration(
      border: Border(
        bottom: BorderSide(width: 1, color: Colors.grey.shade300),
      ),
    );
  }
}
