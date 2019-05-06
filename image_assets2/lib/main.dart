import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Image Assets Demo",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Image assets Demo 2"
          ),
        ),
        body: Center(
          child: Image.asset('assets/puppy.jpeg'),
        ),
      ),
    );
  }

}