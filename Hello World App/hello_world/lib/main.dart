import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
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
  )
);
