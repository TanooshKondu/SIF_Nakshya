import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:syncfusion_flutter_charts/charts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  String apiUrl =
      'https://bhuvan-app1.nrsc.gov.in/api/lulc/curljson.php?year=0506&statcode=AN&distcode=2301&token=ce6649da5a1285a443e717e99a5821f31ab47051';

  Map<String, dynamic>? lulcStats;
  String errorMessage = '';
  bool isLoading = false;
  List<String> legend = [
    'Builtup,Urban',
    'Builtup,Rural',
    'Builtup,Mining',
    'Agriculture,Crop land',
    'Agriculture,Plantation',
    'Agriculture,Fallow',
    'Agriculture, Current Shifting Cultivation',
    'Forest,Evergreen/ Semi evergreen',
    'Forest,Deciduous',
    'Forest,Forest Plantation',
    'Forest,Scrub Forest',
    'Forest,Swamp/ Mangroves',
    'Grass/Grazing',
    'Barren/unculturable/ Wastelands, Salt Affected land',
    'Barren/unculturable/ Wastelands, Gullied/Ravinous Land',
    'Barren/unculturable/ Wastelands, Scrub land',
    'Barren/unculturable/ Wastelands, Sandy area',
    'Barren/unculturable/ Wastelands, Barren rocky',
    'Barren/unculturable/ Wastelands, Rann',
    'Wetlands/Water Bodies, Inland Wetland',
    'Wetlands/Water Bodies, CoastalWetland',
    'Wetlands/Water Bodies, River/Stream/canals',
    'Wetlands/Water Bodies, Reservoir/Lakes/Ponds',
    'Snow and Glacier',
  ];

  Future<void> getLULCStats() async {
    setState(() {
      isLoading = true;
    });

    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        setState(() {
          lulcStats = json.decode(response.body);
          errorMessage = '';
        });
      } else {
        setState(() {
          errorMessage =
              'Failed to load LULC stats. Status code: ${response.statusCode}';
          lulcStats = null;
        });
      }
    } catch (e) {
      setState(() {
        errorMessage = 'Error: $e';
        lulcStats = null;
      });
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Graphs"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isLoading)
                CircularProgressIndicator()
              else if (lulcStats != null)
                // Extract and display specific information from lulcStats
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'District: ${lulcStats?['name']}',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Total Area: ${lulcStats?['totalarea']}',
                      style: TextStyle(fontSize: 18),
                    ),
                    // Add more Text widgets for other information you want to display

                    SizedBox(height: 20),
                    Container(
                      child: Row(
                        children: [
                          SfCartesianChart(
                            primaryXAxis: CategoryAxis(),
                            tooltipBehavior: _tooltipBehavior,
                            series: <CartesianSeries>[
                              LineSeries<ChartData, String>(
                                enableTooltip: true,
                                dataSource: [
                                  ChartData(
                                      legend[0],
                                      double.parse(lulcStats?['l01']),
                                      Colors.blue),
                                  ChartData(
                                      legend[1],
                                      double.parse(lulcStats?['l02']),
                                      Colors.blue),
                                  ChartData(
                                      legend[2],
                                      double.parse(lulcStats?['l03']),
                                      Colors.blue),
                                  ChartData(
                                      legend[3],
                                      double.parse(lulcStats?['l04']),
                                      Colors.blue),
                                  ChartData(
                                      legend[4],
                                      double.parse(lulcStats?['l05']),
                                      Colors.blue),
                                  ChartData(
                                      legend[5],
                                      double.parse(lulcStats?['l06']),
                                      Colors.blue),
                                  ChartData(
                                      legend[6],
                                      double.parse(lulcStats?['l07']),
                                      Colors.blue),
                                  ChartData(
                                      legend[7],
                                      double.parse(lulcStats?['l08']),
                                      Colors.blue),
                                  ChartData(
                                      legend[8],
                                      double.parse(lulcStats?['l09']),
                                      Colors.blue),
                                  ChartData(
                                      legend[9],
                                      double.parse(lulcStats?['l10']),
                                      Colors.blue),
                                  ChartData(
                                      legend[10],
                                      double.parse(lulcStats?['l11']),
                                      Colors.blue),
                                  ChartData(
                                      legend[11],
                                      double.parse(lulcStats?['l12']),
                                      Colors.blue),
                                  ChartData(
                                      legend[12],
                                      double.parse(lulcStats?['l13']),
                                      Colors.blue),
                                  ChartData(
                                      legend[13],
                                      double.parse(lulcStats?['l14']),
                                      Colors.blue),
                                  ChartData(
                                      legend[14],
                                      double.parse(lulcStats?['l15']),
                                      Colors.blue),
                                  ChartData(
                                      legend[15],
                                      double.parse(lulcStats?['l16']),
                                      Colors.blue),
                                  ChartData(
                                      legend[16],
                                      double.parse(lulcStats?['l17']),
                                      Colors.blue),
                                  ChartData(
                                      legend[17],
                                      double.parse(lulcStats?['l18']),
                                      Colors.blue),
                                  ChartData(
                                      legend[18],
                                      double.parse(lulcStats?['l19']),
                                      Colors.blue),
                                  ChartData(
                                      legend[19],
                                      double.parse(lulcStats?['l20']),
                                      Colors.blue),
                                  ChartData(
                                      legend[20],
                                      double.parse(lulcStats?['l21']),
                                      Colors.blue),
                                  ChartData(
                                      legend[21],
                                      double.parse(lulcStats?['l22']),
                                      Colors.blue),
                                  ChartData(
                                      legend[22],
                                      double.parse(lulcStats?['l23']),
                                      Colors.blue),
                                  ChartData(
                                      legend[23],
                                      double.parse(lulcStats?['l24']),
                                      Colors.blue),
                                ],
                                pointColorMapper: (ChartData data, _) =>
                                    data.color,
                                xValueMapper: (ChartData data, _) => data.x,
                                yValueMapper: (ChartData data, _) => data.y,
                              ),
                            ],
                          ),
                          SfCircularChart(series: <CircularSeries>[
                            // Renders radial bar chart
                            RadialBarSeries<ChartData, String>(
                                dataLabelSettings: DataLabelSettings(
                                    // Renders the data label

                                    borderWidth: 10),
                                radius: '150',
                                dataSource: [
                                  ChartData(
                                      legend[0],
                                      double.parse(lulcStats?['l01']),
                                      Colors.blue),
                                  ChartData(
                                      legend[1],
                                      double.parse(lulcStats?['l02']),
                                      Colors.blue),
                                  ChartData(
                                      legend[2],
                                      double.parse(lulcStats?['l03']),
                                      Colors.blue),
                                  ChartData(
                                      legend[3],
                                      double.parse(lulcStats?['l04']),
                                      Colors.blue),
                                  ChartData(
                                      legend[4],
                                      double.parse(lulcStats?['l05']),
                                      Colors.blue),
                                  ChartData(
                                      legend[5],
                                      double.parse(lulcStats?['l06']),
                                      Colors.blue),
                                  ChartData(
                                      legend[6],
                                      double.parse(lulcStats?['l07']),
                                      Colors.blue),
                                  ChartData(
                                      legend[7],
                                      double.parse(lulcStats?['l08']),
                                      Colors.blue),
                                  ChartData(
                                      legend[8],
                                      double.parse(lulcStats?['l09']),
                                      Colors.blue),
                                  ChartData(
                                      legend[9],
                                      double.parse(lulcStats?['l10']),
                                      Colors.blue),
                                  ChartData(
                                      legend[10],
                                      double.parse(lulcStats?['l11']),
                                      Colors.blue),
                                  ChartData(
                                      legend[11],
                                      double.parse(lulcStats?['l12']),
                                      Colors.blue),
                                  ChartData(
                                      legend[12],
                                      double.parse(lulcStats?['l13']),
                                      Colors.blue),
                                  ChartData(
                                      legend[13],
                                      double.parse(lulcStats?['l14']),
                                      Colors.blue),
                                  ChartData(
                                      legend[14],
                                      double.parse(lulcStats?['l15']),
                                      Colors.blue),
                                  ChartData(
                                      legend[15],
                                      double.parse(lulcStats?['l16']),
                                      Colors.blue),
                                  ChartData(
                                      legend[16],
                                      double.parse(lulcStats?['l17']),
                                      Colors.blue),
                                  ChartData(
                                      legend[17],
                                      double.parse(lulcStats?['l18']),
                                      Colors.blue),
                                  ChartData(
                                      legend[18],
                                      double.parse(lulcStats?['l19']),
                                      Colors.blue),
                                  ChartData(
                                      legend[19],
                                      double.parse(lulcStats?['l20']),
                                      Colors.blue),
                                  ChartData(
                                      legend[20],
                                      double.parse(lulcStats?['l21']),
                                      Colors.blue),
                                  ChartData(
                                      legend[21],
                                      double.parse(lulcStats?['l22']),
                                      Colors.blue),
                                  ChartData(
                                      legend[22],
                                      double.parse(lulcStats?['l23']),
                                      Colors.blue),
                                  ChartData(
                                      legend[23],
                                      double.parse(lulcStats?['l24']),
                                      Colors.blue),
                                ],
                                xValueMapper: (ChartData data, _) => data.x,
                                yValueMapper: (ChartData data, _) => data.y)
                          ])
                        ],
                      ),
                    ),
                  ],
                ),
              if (errorMessage.isNotEmpty)
                Text(
                  'Error: $errorMessage',
                  style: TextStyle(color: Colors.red, fontSize: 18),
                ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: getLULCStats,
                child: Text('Get Stats'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
