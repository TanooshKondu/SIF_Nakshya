import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DoctorDetailsPage(),
    );
  }
}

class DoctorDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Registration'),
        backgroundColor: Color(0xffa31ecb),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/images/background1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                UserDetailBox(label: 'Name'),
                UserDetailBox(label: 'Email'),
                UserDetailBox(label: 'Phone Number'),
                UserDetailBox(label: 'Date Of Birth'),
                UserDetailBox(label: 'Address'),
                UserDetailBox(label: 'City'),
                UserDetailBox(label: 'State'),
                UserDetailBox(label: 'Country'),
                UserDetailBox(label: 'Pincode'),
                UserDetailBox(label: 'Country'),
                UserDetailBox(label: 'Profession'),
                UserDetailBox(label: 'Education'),
                UserDetailBox(label: 'Company'),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Implement your logic to save user details here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffa31ecb),
                    minimumSize: Size(200, 60),
                  ),
                  child: Text(
                    'Save',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UserDetailBox extends StatelessWidget {
  final String label;

  UserDetailBox({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: label,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
