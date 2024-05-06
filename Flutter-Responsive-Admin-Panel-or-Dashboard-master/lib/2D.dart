import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BhuvanMapDemo(),
    );
  }
}

class BhuvanMapDemo extends StatefulWidget {
  @override
  _BhuvanMapState createState() => _BhuvanMapState();
}

class _BhuvanMapState extends State<BhuvanMapDemo> {
  late MapController _mapController;

  @override
  void initState() {
    _mapController = MapController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        mapController: _mapController,
        options: MapOptions(
          initialCenter: LatLng(15.9129, 79.7400),
          initialZoom: 5.0,
        ),
        children: [
          TileLayer(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
          ),
        ],
      ),
    );
  }
}
