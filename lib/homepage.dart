import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttergooglemapsapp/boxes.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:location/location.dart';
import 'package:fluttergooglemapsapp/markers.dart';


class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  Completer<GoogleMapController> _controller = Completer();
  Location _location = Location();

  var shops =[
    {
      'image':  "https://lh5.googleusercontent.com/p/AF1QipNO3zUpqpaK3KbveCRfSWdfDI8fZhEHT6KUT4EB=w426-h240-k-no",
      'lat': 21.013589,
      'long': 75.564928,
      'name': "Delight Bakers",
      'type': 'Bakery and Cake Shop',
    },
    {
      'image':  "https://lh5.googleusercontent.com/p/AF1QipOIv4-SWrAfH8wtEzhHyN63uHsl1i8wjX42E42b=w408-h306-k-no",
      'lat': 20.992158,
      'long': 75.561951,
      'name': "CAFE CHOKOLADE",
      'type': 'Cafe',
    },
    {
      'image':  "https://lh5.googleusercontent.com/p/AF1QipO8FZIEaxb6YmWbBLaClTlLfLvLu9A-OZXc6Vk7=w426-h240-k-no",
      'lat': 21.000919,
      'long': 75.558478,
      'name': "Sweet CRUNCH",
      'type': 'Bakery and Cake Shop',
    },
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        
        leading: IconButton(
            icon: Icon(FontAwesomeIcons.arrowLeft),
            onPressed: () {}
          ),
        
        title: Text("Cafe's n Cake Shop"),
        
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.search),
            onPressed: () {},
          ),
        ],
      
      ),
      
      body: Stack(
        children: <Widget>[
          _buildGoogleMap(context),
          _buildContainer(),
        ],
      ),
    
    );
  }

  Widget _buildContainer() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 45.0),
        height: 150.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[

            ...shops.map((map){
              return Boxes(_gotoLocation,map);
            }),

            //SizedBox(width: 10.0),
          ],
        ),
      ),
    );
  }

  Widget _buildGoogleMap(BuildContext context) {

    return Container(

      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      
      child: GoogleMap(
      
        mapType: MapType.normal,
        initialCameraPosition:
            CameraPosition(target: LatLng(21.0077, 75.5626), zoom: 12.5),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
          _location.onLocationChanged().listen((l) {});
        },
        myLocationEnabled: true,
        //For Location Permission

        markers: {
          chokoladeMarker,
          neardearMarker,
          londonShakesMarker,
          delightMarker,
          sweetCrunchMarker,
          unique365Marker,
        },
      ),
    
    );
  }

  Future<void> _gotoLocation(double lat, double long) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: LatLng(lat, long),
      zoom: 15,
      tilt: 50.0,
      bearing: 45.0,
    )));
  }
}
