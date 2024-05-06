import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'stats.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BhuvanMap(),
    );
  }
}

class BhuvanMap extends StatefulWidget {
  @override
  _BhuvanMapState createState() => _BhuvanMapState();
}

class _BhuvanMapState extends State<BhuvanMap> {
  String _selectedLayer = 'LULC_50K_2005_06';
  String _selectedSector = 'LULC_50K_2005_06';
  String _selectedState = 'AP';
  String _selectedView = 'map'; // Default view is set to 'map'
  late MapController _mapController;

  @override
  void initState() {
    _mapController = MapController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bhuvan 2D Map'),
        actions: [
          _buildFilterButton(),
        ],
      ),
      drawer: _buildDrawer(),
      body: _selectedView == 'map' ? _buildMap() : _buildGraph(),
    );
  }

  Widget _buildMap() {
    return FlutterMap(
      mapController: _mapController,
      options: MapOptions(
        initialCenter: _getCenterCoordinates(),
        initialZoom: 7.0,
      ),
      children: [
        TileLayer(
          urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
        ),
        TileLayer(
          wmsOptions: WMSTileLayerOptions(
            baseUrl: 'https://bhuvan-vec2.nrsc.gov.in/bhuvan/wms/?',
            layers: [_getSelectedWMSLayer()],
            version: '1.1.1',
            format: 'image/png',
            transparent: true,
          ),
          subdomains: ['a', 'b', 'c', 'd'],
        ),
      ],
    );
  }

  Widget _buildGraph() {
    // Implement the widget for displaying a graph here
    return Center(child: MyHomePage());
  }

  Widget _buildFilterButton() {
    return DropdownButton<String>(
      value: _selectedView,
      onChanged: (String? newValue) {
        if (newValue != null) {
          setState(() {
            _selectedView = newValue;
          });
        }
      },
      items: ['map', 'graph'].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text('Show as $value'),
        );
      }).toList(),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('Sector:'),
            subtitle: _buildSectorDropdown(),
          ),
          ListTile(
            title: Text('State:'),
            subtitle: _buildStateDropdown(),
          ),
          ListTile(
            title: Text('Apply'),
            onTap: () {
              Navigator.pop(context);
              setState(() {});
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSectorDropdown() {
    return DropdownButton<String>(
      value: _selectedSector,
      onChanged: (String? newValue) {
        if (newValue != null) {
          setState(() {
            _selectedSector = newValue;
          });
        }
      },
      items: [
        'LULC_50K_2005_06',
        'Wasteland(50k)_2006_09',
        'Land Degradation_50K_2005_06',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  Widget _buildStateDropdown() {
    return DropdownButton<String>(
      value: _selectedState,
      onChanged: (String? newValue) {
        if (newValue != null) {
          setState(() {
            _selectedState = newValue;
          });
        }
      },
      items: ['AP', 'Assam', 'Bihar']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  LatLng _getCenterCoordinates() {
    switch (_selectedState) {
      case 'AP':
        return LatLng(15.9129, 79.7400);
      case 'Assam':
        return LatLng(26.244156, 92.537842); // Corrected coordinates for Assam
      case 'Bihar':
        return LatLng(25.0961, 85.3131); // Corrected coordinates for Bihar
      default:
        return LatLng(15.9129, 79.7400);
    }
  }

  String _getSelectedWMSLayer() {
    switch (_selectedSector) {
      case 'LULC_50K_2005_06':
        switch (_selectedState) {
          case 'AP':
            return 'lulc:AP_LULC50K_0506';
          case 'Assam':
            return 'lulc:AS_LULC50K_0506';
          case 'Bihar':
            return 'lulc:BR_LULC50K_0506';
          default:
            return 'lulc:AP_LULC50K_0506';
        }
        break;

      case 'Wasteland(50k)_2006_09':
        switch (_selectedState) {
          case 'AP':
            _mapController.move(LatLng(15.9129, 79.7400), 5.0);
            return 'wasteland:AP_WL50K_0809';
          case 'Assam':
            _mapController.move(LatLng(26.244156, 92.537842), 5.0);
            return 'wasteland:AS_WL50K_0809';
          case 'Bihar':
            _mapController.move(LatLng(25.0961, 85.3131), 5.0);
            return 'wasteland:BR_WL50K_0809';
          default:
            return 'wasteland:AP_WL50K_0809';
        }
        break;

      case 'Land Degradation_50K_2005_06':
        switch (_selectedState) {
          case 'AP':
            return 'ld:AP_LD50K_0506';
          case 'Assam':
            return 'ld:AS_LD50K_0506';
          case 'Bihar':
            return 'ld:BR_LD50K_0506';
          default:
            return 'ld:AP_LD50K_0506';
        }
        break;

      default:
        return 'lulc:AP_LULC50K_0506';
    }
  }
}
