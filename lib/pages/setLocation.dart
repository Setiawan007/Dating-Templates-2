import 'package:date2/pages/interested.dart';
import 'package:flutter/material.dart';
import 'package:date2/helper/style.dart' as style;
import 'package:google_maps_flutter/google_maps_flutter.dart';

class setLocation extends StatefulWidget {
  setLocation({Key? key}) : super(key: key);

  static const String page_id = 'Set Location';

  @override
  _setLocationState createState() => _setLocationState();
}

class _setLocationState extends State<setLocation> {
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('Id-1'),
          position: LatLng(21.5397106, 71.8215543),
        ),
      );
    });
  }

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
                        builder: (context) => new interestedIn()));
              },
              label: Text(
                'Allow Location',
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
          'Set Location',
          style: style.headText(),
        ));
  }

  Widget _buildBody(context) {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      markers: _markers,
      initialCameraPosition:
          CameraPosition(target: LatLng(21.5397106, 71.8215543), zoom: 15),
    );
  }
}
