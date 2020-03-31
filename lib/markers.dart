import 'package:google_maps_flutter/google_maps_flutter.dart';

Marker delightMarker = Marker(
  markerId: MarkerId('delight'),
  position: LatLng(21.013589, 75.564928),
  infoWindow: InfoWindow(title: 'Delight Bakers'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
  onTap: (){},

);

Marker sweetCrunchMarker = Marker(
  markerId: MarkerId('sweetCrunch'),
  position: LatLng(21.000919, 75.558478),
  infoWindow: InfoWindow(title: 'Sweet CRUNCH'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
  onTap: (){},
);

Marker chokoladeMarker = Marker(
  markerId: MarkerId('chokolade'),
  position: LatLng(20.992158, 75.561951),
  infoWindow: InfoWindow(title: 'CAFE CHOKOLADE'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
  onTap: (){},
);

Marker unique365Marker = Marker(
  markerId: MarkerId('unique365'),
  position: LatLng(21.012915, 75.565764),
  infoWindow: InfoWindow(title: 'Unique 365 Cake Shop'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
  onTap: (){},
);

Marker neardearMarker = Marker(
  markerId: MarkerId('neardear'),
  position: LatLng(21.006321, 75.555842),
  infoWindow: InfoWindow(title: 'Cafe Near & Dear'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
  onTap: (){},
);

Marker londonShakesMarker = Marker(
  markerId: MarkerId('londonshakes'),
  position: LatLng(20.994788, 75.557931),
  infoWindow: InfoWindow(title: 'The London Shakes Jalgaon'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
  onTap: (){},
);