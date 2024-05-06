import 'package:flutter/material.dart';
//import 'Archieved_Page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Newsletter App',
      theme: ThemeData(
        primaryColor: Color(0xffa31ecb),
      ),
      home: NewsLetter_Page(),
      //   routes: {
      //     '/archive': (context) =>
      //         ArchivePage(), // Provide a default value or actual value
      //   },
      //
    );
  }
}

class NewsLetter_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Newsletter'),
        backgroundColor: Color(0xffa31ecb),
        actions: [
          IconButton(
            icon: Icon(Icons.archive),
            onPressed: () {
              Navigator.pushNamed(context, '/archive');
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'lib/images/background1.jpg'), // Replace with your image
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            // Fixed heading for all containers
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                'Nakshya-News-Dec-2023',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            // Container 1
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  // Image 1
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'lib/images/News1.jpg'), // Replace with your image
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(height: 10),
                  // Matter with small heading 1
                  Text(
                    'OCM-3 Chlorophyll (OC4)',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffa31ecb),
                    ),
                  ),
                  SizedBox(height: 10),
                  // Some matter 1
                  Text(
                    'NICES is updated with EOS-06 OCM-3 Chlorophyll (OC4) Global data (Daily, 8-Day and Monthly) products at 4 KM from April 2023 onwards. The corresponding datasets can be visualized and are available for download.',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 10),
                  // Visit button 1
                  ElevatedButton(
                    onPressed: () {
                      // Handle button press for container 1
                      print('Visit Button 1 Pressed');
                      // Add navigation logic or link for container 1
                    },
                    child: Text(
                      'Visit',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffa31ecb),
                    ),
                  ),
                ],
              ),
            ),

            // Container 2
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  // Image 2
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'lib/images/News2.jpg'), // Replace with your image
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(height: 10),
                  // Matter with small heading 2
                  Text(
                    'AMRUT',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffa31ecb),
                    ),
                  ),
                  SizedBox(height: 10),
                  // Some matter 2
                  Text(
                    'Bhuvan Thematic Services has been updated with Urban Land Use (4K) AMRUT datasets for 232 towns. The data sets corresponding to the towns that are accessible can be visualized and consumed as WMS/WMTS services.',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 10),
                  // Visit button 2
                  ElevatedButton(
                    onPressed: () {
                      // Handle button press for container 2
                      print('Visit Button 2 Pressed');
                      // Add navigation logic or link for container 2
                    },
                    child: Text(
                      'Visit',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffa31ecb),
                    ),
                  ),
                ],
              ),
            ),

            // Container 3
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  // Image 3
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'lib/images/News3.jpg'), // Replace with your image
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(height: 10),
                  // Matter with small heading 3
                  Text(
                    'SPACE INDIA HACKATHON–IISF 2023',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffa31ecb),
                    ),
                  ),
                  SizedBox(height: 10),
                  // Some matter 3
                  Text(
                    'The Students Innovation Festival (SIF) - Space Hackathon 2023 is being organized as a part of India International Science Festival 2023. Any student pursuing graduation in a recognized college/university within the country can participate by registering here. See the Space Hackathon details here.',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 10),
                  // Visit button 3
                  ElevatedButton(
                    onPressed: () {
                      // Handle button press for container 3
                      print('Visit Button 3 Pressed');
                      // Add navigation logic or link for container 3
                    },
                    child: Text(
                      'Visit',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffa31ecb),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
