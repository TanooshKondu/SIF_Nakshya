// import 'package:flutter/material.dart';
// import 'User_Login_Page.dart';
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: User_Registration_Page(),
//     );
//   }
// }
//
// class User_Registration_Page extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('User Registration'),
//         backgroundColor: Color(0xff5b25d2),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('lib/images/background2.jpg'),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 UserDetailBox(label: 'Name'),
//                 UserDetailBox(label: 'Email'),
//                 UserDetailBox(label: 'Phone Number'),
//                 UserDetailBox(label: 'Date Of Birth'),
//                 UserDetailBox(label: 'Address'),
//                 UserDetailBox(label: 'City'),
//                 UserDetailBox(label: 'State'),
//                 UserDetailBox(label: 'Country'),
//                 UserDetailBox(label: 'Pincode'),
//                 UserDetailBox(label: 'Country'),
//                 UserDetailBox(label: 'Profession'),
//                 UserDetailBox(label: 'Education'),
//                 UserDetailBox(label: 'Company'),
//                 SizedBox(height: 16.0),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => User_Login_Page()),
//                     );// Implement your logic to save user details here
//                   },
//                   style: ElevatedButton.styleFrom(
//                     primary: Color(0xff5b25d2),
//                     minimumSize: Size(200, 60),
//                   ),
//                   child: Text(
//                     'Save',
//                     style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.white,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class UserDetailBox extends StatelessWidget {
//   final String label;
//
//   UserDetailBox({required this.label});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(0.7),
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       padding: EdgeInsets.all(16.0),
//       margin: EdgeInsets.symmetric(vertical: 8.0),
//       child: TextField(
//         decoration: InputDecoration(
//           hintText: label,
//           border: InputBorder.none,
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'User_Login_Page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: User_Registration_Page(),
    );
  }
}

class User_Registration_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffa31ecb),
        title: Row(
          children: [
            Image.asset(
              'lib/images/logo.png', // Replace with your actual image asset
              height: 40, // Adjust the height according to your design
            ),
            SizedBox(width: 10), // Add some spacing between the image and text
            Text(
              'User Registration',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => User_Login_Page()),
                    ); // Implement your logic to save user details here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffa31ecb), // Set background color
                    minimumSize: Size(200, 60), // Set minimumSize
                  ),
                  child: Text(
                    'Register',
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
        color: Colors.black.withOpacity(0.35),
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: label,
          hintStyle: TextStyle(color: Colors.white),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
