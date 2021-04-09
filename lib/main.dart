import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

void main() => runApp(MaterialApp(
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MapController controller = MapController(
    initMapWithUserPosition: false,
    initPosition: GeoPoint(latitude: 12.9308, longitude: 77.5838,
    ),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OSM MAP'),
      ),
      body:   OSMFlutter(
        controller:controller,
        trackMyPosition: false,
        // currentLocation: false,
        road: Road(

          startIcon: MarkerIcon(
            icon: Icon(
              Icons.person,
              size: 64,
              color: Colors.blue,
            ),
          ),
          roadColor: Colors.yellowAccent,
          endIcon: MarkerIcon(
            icon: Icon(
              Icons.person_pin_circle,
              color: Colors.blue,
              size: 72,
            ),
          ),
        ),
        markerIcon: MarkerIcon(
          icon: Icon(
            Icons.person_pin_circle,
            color: Colors.blue,
            size: 72,
          ),
        ),
        defaultZoom: 60,
        showZoomController: true,
        // initPosition: GeoPoint(latitude: 47.35387, longitude: 8.43609),
      )
    );
  }
}
