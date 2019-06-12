import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }

}

class MyAppState extends State<MyApp> {

  bool state = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Switch Demo",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Switch Demo"
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top:150),
                child: Switch(
                  value: state,
                  onChanged: (bool state) {
                    setState(() {
                      this.state = state;
                    });
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  "The switch is $state",
                  style: TextStyle(
                    fontSize: 20.0
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}