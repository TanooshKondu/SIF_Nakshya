import 'package:admin/screens/side_bar_screens/Actual_2D_Map.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class CardData {
  final String title;
  final String description;
  final Widget mapScreen;

  CardData({
    required this.title,
    required this.description,
    required this.mapScreen,
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple, // Change the primary color to purple
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
        ),
        body: Agriculture_sub_sector_Page(),
      ),
    );
  }
}

class Agriculture_sub_sector_Page extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<Agriculture_sub_sector_Page> {
  int? expandedCardIndex;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cards.length,
      itemBuilder: (context, index) {
        return ExpandableCard(
          card: cards[index],
          isExpanded: index == expandedCardIndex,
          onExpand: () {
            setState(() {
              expandedCardIndex = index;
            });
          },
        );
      },
    );
  }
}

class ExpandableCard extends StatefulWidget {
  final CardData card;
  final bool isExpanded;
  final Function onExpand;

  ExpandableCard({
    required this.card,
    required this.isExpanded,
    required this.onExpand,
  });

  @override
  _ExpandableCardState createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          widget.onExpand();
        },
        child: Column(
          children: [
            ListTile(
              title: Text(widget.card.title),
            ),
            if (widget.isExpanded)
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(widget.card.description),
              ),
            if (widget.isExpanded)
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => widget.card.mapScreen),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.purple),
                ),
                child: Text(
                  'View on Map',
                  style: TextStyle(color: Colors.white),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class MapScreen extends StatelessWidget {
  final String cardTitle;

  MapScreen({required this.cardTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map Screen - $cardTitle'),
      ),
      body: Center(
        child: Text('Map content for $cardTitle'),
      ),
    );
  }
}

final List<CardData> cards = [
  CardData(
    title: 'Irrigation Rate',
    description:
        'The irrigation rate measures how much water is supplied to a specific land area over time. It plays a key role in optimizing watering schedules for crops and plants, ensuring efficient water use and healthy growth. Precision in irrigation rates is crucial for resource conservation and sustainable agricultural practices.',
    mapScreen: BhuvanMap(),
  ),
  CardData(
    title: 'Waste Land',
    description:
        'Discover the extent of environmental challenges with the "Waste Land" map. Explore areas affected by degradation or pollution, aiding in targeted remediation efforts. The map provides a visual representation of ecological concerns, guiding initiatives for environmental restoration and sustainable practices.',
    mapScreen: BhuvanMap(),
  ),
  CardData(
    title: 'Harvested Crop',
    description:
        'Navigate the map to explore the locations of recent "Harvested Crops." Gain insights into diverse crop distribution, aiding in strategic planning and resource allocation for sustainable agriculture.',
    mapScreen: BhuvanMap(),
  ),
];
