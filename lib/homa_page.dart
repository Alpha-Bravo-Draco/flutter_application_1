import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text("title Bar")),
      ),
      body: Center(
        child: Container(
          child: Text("welcome $days"),
        ),
      ),
      drawer: Drawer(),
    ));
  }
}
