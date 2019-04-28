import 'package:flutter/material.dart';
import './app_Screens/Containers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Container App",
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            "Container Appp"
          ),
        ),
        body: ContainerClass()
        ),
    );
  }
}