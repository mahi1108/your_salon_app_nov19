import 'dart:async';

import 'package:flutter/material.dart';
import 'SelectOptions.dart';
import 'Login.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'AppConstants.dart';

class Maps extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MapsState();
  }
}

class MapsState extends State<Maps>
{

  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(24.7136, 46.6753);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          automaticallyImplyLeading: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context, false);
              }),
          backgroundColor: Colors.green,
          title: new Text(AppConstants.getValue("1"),
            style: new TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 25
            ),),
        ),
        body: new Container(
          color: Colors.white,
          child: new Stack(
            alignment: Alignment(0, -1),
            children: <Widget>[

              new GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                      target: _center,
                      zoom: 11.0))

            ],
          ),
          alignment: Alignment.center,
        ),
      ),
    );
  }

}