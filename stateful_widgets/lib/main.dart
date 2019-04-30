import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Stateful Widget Demo",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Stateful Widget Demo"
          ),
        ),
        body: MyApp(),
      ),
    ));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  String name = " ";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          TextField(
            onSubmitted: (String string) {
              setState(() {
                name = string;
              });
            },
          ),
          Padding(
            padding: EdgeInsets.only(top:20.0),
            child: Text("Your Favourite city is $name",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.deepOrange
            ),),
          )
        ],
      ),
    );
  }
}
