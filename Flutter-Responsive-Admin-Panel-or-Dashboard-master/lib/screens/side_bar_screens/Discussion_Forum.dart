import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Discussion_Forum_Page(),
    );
  }
}

class Discussion_Forum_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discussion Forum'),
        backgroundColor: Color(0xffa31ecb),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/background1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              DiscussionTile(
                question: 'What is Bhuvan, and what is its primary purpose?',
                answer:
                    ' Bhuvan is an Indian geo-platform that provides satellite imagery and mapping services for various applications, including urban planning and disaster management.',
                color: Colors.white,
              ),
              SizedBox(height: 10),
              DiscussionTile(
                question: 'How can users access Bhuvans services?',
                answer:
                    'Users can access Bhuvan through the official website or mobile applications available for Android and iOS platforms.',
                color: Colors.white,
              ),
              SizedBox(height: 10),
              DiscussionTile(
                question: 'What types of satellite imagery does Bhuvan offer?',
                answer:
                    'Bhuvan provides different types of satellite imagery, including high-resolution images and thematic maps.',
                color: Colors.white,
              ),
              SizedBox(height: 10),
              DiscussionTile(
                question:
                    ' What specific sectors benefit from Bhuvans applications?',
                answer:
                    'Bhuvans applications cater to sectors such as agriculture, forestry, water resources, and infrastructure planning.',
                color: Colors.white,
              ),
              SizedBox(height: 10),
              DiscussionTile(
                question: 'How does Bhuvan contribute to disaster management?',
                answer:
                    'Bhuvan aids in disaster management by providing real-time satellite data for monitoring and assessing the impact of natural disasters.',
                color: Colors.white,
              ),
              SizedBox(height: 10),
              DiscussionTile(
                question: 'Can users contribute their data to Bhuvan?',
                answer:
                    'Yes, Bhuvan allows users to contribute their geospatial data and annotations, fostering collaborative mapping efforts.',
                color: Colors.white,
              ),
              SizedBox(height: 10),
              DiscussionTile(
                question:
                    'What is the significance of Bhuvan in Indias space technology landscape?',
                answer:
                    'Bhuvan plays a crucial role in democratizing geospatial information and promoting the use of space technology for societal development in India.',
                color: Colors.white,
              ),
              SizedBox(height: 10),
              DiscussionTile(
                question: ' How does Bhuvan support agricultural activities?',
                answer:
                    'Bhuvan assists farmers by providing satellite-based information on crop health, soil moisture, and weather conditions for better decision-making.',
                color: Colors.white,
              ),
              SizedBox(height: 10),
              DiscussionTile(
                question:
                    'What are the key features of Bhuvans mobile applications?',
                answer:
                    ' Bhuvans mobile apps offer features such as location-based services, navigation, and the ability to view and share geospatial information on the go.',
                color: Colors.white,
              ),
              SizedBox(height: 10),
              DiscussionTile(
                question:
                    'How does Bhuvan contribute to environmental monitoring?',
                answer:
                    ' Bhuvan aids in environmental monitoring by providing satellite data for tracking deforestation, land-use changes, and other ecological indicators.',
                color: Colors.white,
              ),
              // Add more DiscussionTile widgets as needed
            ],
          ),
        ),
      ),
    );
  }
}

class DiscussionTile extends StatefulWidget {
  final String question;
  final String answer;
  final Color color;

  DiscussionTile(
      {required this.question, required this.answer, required this.color});

  @override
  _DiscussionTileState createState() => _DiscussionTileState();
}

class _DiscussionTileState extends State<DiscussionTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.color,
      child: ExpansionTile(
        title: Text(
          widget.question,
          style:
              TextStyle(color: Color(0xffa31ecb), fontWeight: FontWeight.bold),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              widget.answer,
              style: TextStyle(
                color: Color(0xffa31ecb),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
