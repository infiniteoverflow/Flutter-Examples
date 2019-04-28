import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Custom Fonts App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom Fonts"),
        ),
        body: Center(
          child: Text(
            "This is a custom font",
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'ZCOOLKuaiLe'
            ),
            ),
          ),
        ),
    );
  }
}
