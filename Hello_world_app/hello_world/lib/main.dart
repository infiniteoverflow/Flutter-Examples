import 'package:flutter/material.dart';

void main() => runApp(HelloApp());

class HelloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    title: "Flutter App",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Flutter"),
      ),
    body: Material(
      color: Colors.white,
      child: Center(
        child: Text(
          "Hello World",
          style: TextStyle(fontSize: 30.0,fontStyle: FontStyle.italic),
        )
      ),
    ),
    )
  );
  }
}