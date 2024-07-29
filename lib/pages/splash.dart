// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class Splash extends StatefulWidget {
//   const Splash({super.key});

//   @override
//   State<Splash> createState() => _SplashState();
// }

// class _SplashState extends State<Splash> {
//   @override
//   void initState() {
//     startTimer();
//     super.initState();
//   }

//   startTimer() {
//     var duration = Duration(seconds: 3);
//     return Timer(duration, route);
//   }

//   route() {
//     Navigator.of(context).pushReplacementNamed('/login');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Color.fromARGB(255, 21, 0, 0),
//         child: Image.asset('assets/logo.jfif'));
//   }
// }

import 'dart:async';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timerr();
  }

  Timerr() {
    var duration = Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.of(context).pushReplacementNamed('/login');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Image.asset('assets/logo.png'));
  }
}
