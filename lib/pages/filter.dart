import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date2/helper/style.dart' as style;

class filter extends StatefulWidget {
  filter({Key? key}) : super(key: key);

  @override
  _filterState createState() => _filterState();
}

class _filterState extends State<filter> {
  int? groupValue = 0;
  int distance = 46;

  RangeValues age = const RangeValues(20, 30);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 10.0),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
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
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Filter',
            style: style.headText(),
          ),
          InkWell(
            onTap: () => {
              Navigator.pop(context),
            },
            child: Text(
              'Clear',
              style: TextStyle(fontSize: 12, color: style.appColor),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Interested in',
                style: style.simpleBoldText(),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          CupertinoSlidingSegmentedControl<int>(
            padding: EdgeInsets.all(2),
            backgroundColor: Colors.red.shade100,
            thumbColor: style.appColor,
            groupValue: groupValue,
            children: {
              0: buildSegment('Girls'),
              1: buildSegment('Boys'),
              2: buildSegment('Both')
            },
            onValueChanged: (groupValue) {
              setState(() => this.groupValue = groupValue);
            },
          ),
          SizedBox(
            height: 26,
          ),
          Flexible(
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: 'Bali, Indonesia',
                prefixIcon:
                    Icon(Icons.location_on_outlined, color: style.appColor),
                hintStyle: TextStyle(color: Colors.black87),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              ),
            ),
          ),
          SizedBox(
            height: 26,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Distance',
                style: style.simpleBoldText(),
              ),
              Text(
                distance.toString(),
                style: style.simpleText(),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              inactiveTrackColor: Colors.red.shade100,
              activeTrackColor: style.appColor,
              thumbColor: style.appColor,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
            ),
            child: Slider(
              value: distance.toDouble(),
              min: 1.0,
              max: 100.0,
              onChanged: (double newValue) {
                setState(() {
                  distance = newValue.round();
                });
              },
            ),
          ),
          SizedBox(
            height: 26,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Age',
                style: style.simpleBoldText(),
              ),
              Text(
                '20-30',
                style: style.simpleText(),
              ),
            ],
          ),
          SizedBox(
            height: 26,
          ),
          // RangeSlider(
          //   inactiveColor: Colors.red.shade100,
          //   activeColor: style.appColor,
          //   min: minAge,
          //   max: maxAge,
          //   values: age,
          //   onChanged: (min) {
          //     setState(() {
          //       age = min;
          //     });
          //   },
          // ),
          RangeSlider(
            values: age,
            min: 0,
            max: 100,
            divisions: 10,
            activeColor: Color.fromARGB(255, 253, 94, 96),
            inactiveColor: Colors.grey[300],
            labels: RangeLabels(
              age.start.round().toString(),
              age.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                age = values;
              });
            },
          )
        ],
      ),
    );
  }

  Widget buildSegment(String text) => Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
        child: Text(
          text,
          style: style.simpleBoldText(),
        ),
      );
}
