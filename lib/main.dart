import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/signup.dart';
import 'package:flutter_application_1/pages/splash.dart';
// import 'package:flutter_application_1/pages/home_page.dart'; // Correct import

void main() {
  runApp(const MyApp()); // Ensure const is used if MyApp is stateless
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splash(),
      routes: {
        // "/": (context) => const Splash(),
        "/login": (context) => const Login(),
        "/Signup": (context) => const Signup()
      },
    );
  }
}
