import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'User_Registration_Page.dart';
import 'Password_Reset_Page.dart';

////import '';

void main() {
  runApp(MaterialApp(
    home: User_Login_Page(),
  ));
}

class User_Login_Page extends StatelessWidget {
  // text editing controllers
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {
    String username = usernameController.text;
    String password = passwordController.text;
    // Implement user sign-in logic using the provided credentials
    // Add your authentication logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'lib/images/background1.jpg', // Replace with your image path
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Logo and Welcome Message
                  Image.asset(
                    'lib/images/logo.png', // Replace with your app logo path
                    width: 300,
                    height: 300,
                  ),
                  SizedBox(
                      height: 16.0), // Added space below the "User Login" text
                  Text(
                    'User Login!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                      height: 16.0), // Added space below the "User Login" text

                  // Username Textfield
                  MyTextField(
                    controller: usernameController,
                    hintText: 'Username',
                    obscureText: false,
                  ),

                  SizedBox(
                      height:
                          12.0), // Added space between username and password fields

                  // Password Textfield
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),

                  // Forgot Password
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Reset_Password_Page()),
                      ); // Implement forgot password logic
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                  // Sign In Button
                  MyButton(
                    onTap: signUserIn,
                  ),

                  // Not a Member? Register Now
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text.rich(
                      TextSpan(
                        text: 'Not a member? ',
                        style: TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                            text: 'Register now',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          User_Registration_Page()),
                                ); // Handle the click event here, e.g., navigate to another page
                              },
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: MyTextField
          .styleFrom(), // Use the styleFrom method for the entire TextField style
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white), // Hint text color
        filled: true,
        fillColor:
            Colors.black.withOpacity(0.3), // Semi-transparent background color
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
      ),
      obscureText: obscureText,
    );
  }

  static TextStyle styleFrom() {
    return TextStyle(
      color: Colors.white,
      // Add any additional styling you want for the TextField here
    );
  }
}

class MyButton extends StatelessWidget {
  final VoidCallback onTap;

  const MyButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MainScreen()),
        );
      },
      style: ElevatedButton.styleFrom(
        primary: Color(0xffa31ecb), // Background color
        textStyle: MyButton.styleFrom(),
        fixedSize: Size(200, 40), // Apply text styles
      ),
      // onPressed: () {
      //   Navigator.push(
      //     context
      //MaterialPageRoute(builder: (context) => Home_Page()),
      // );
      // },
      child: Text('Sign In', style: TextStyle(color: Colors.white)),
    );
  }

  static TextStyle styleFrom() {
    return TextStyle(
      color: Colors.white, // Text color
      // Add any additional styling you want for the button text here
    );
  }
}
