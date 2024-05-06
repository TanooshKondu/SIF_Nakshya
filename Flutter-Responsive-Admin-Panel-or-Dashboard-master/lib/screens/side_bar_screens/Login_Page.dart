// import 'package:flutter/material.dart';
// import 'User_Login_Page.dart';
//
// class Login_Page extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background Image
//           Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(
//                   'lib/images/background1.jpg', // Replace with your image path
//                 ),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//
//           // Welcome Message and Buttons
//           Center(
//             child: Padding(
//               padding: EdgeInsets.only(top: 50.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Nakshya',
//                     style: TextStyle(
//                       fontSize: 42,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => User_Login_Page()),
//                       );
//                       // Navigate to the destination page when the button is clicked
//                     },
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors
//                           .white, // Set the button's background color to white
//                       minimumSize: Size(200,
//                           60), // Set the minimum width and height for the button
//                     ),
//                     child: Text(
//                       'Get Started',
//                       style: TextStyle(
//                         fontSize: 20, // Adjust the font size of the text
//                         color: Color(0xff330e73), // Set the color of the text
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'User_Login_Page.dart';

class Login_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'lib/images/background1.jpg', // Replace with your image path
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Welcome Message and Buttons
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Row containing image and text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Image on top
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 20.0, // Adjust bottom padding
                        ),
                        child: Image.asset(
                          'lib/images/logo.png', // Replace with your image path
                          height: 270, // Adjust the height as needed
                          width: 270, // Adjust the width as needed
                        ),
                      ),
                    ],
                  ),
                  // Text
                  Text(
                    'Nakshya',
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => User_Login_Page()),
                      );
                      // Navigate to the destination page when the button is clicked
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: Size(200, 60),
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff330e73),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
