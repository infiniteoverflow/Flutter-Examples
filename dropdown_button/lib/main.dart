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
  var selected = "Season 1";
  var items = ["Season 1", "Season 2", "Season 3", "Season 4", "Season 5"];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dropdown demo",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dropdown Demo"),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                  child:Center(
                child: Text(
                  "Select Season",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.deepOrange
                  ),
                ),
              )
              ),

              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Center(
                  child: DropdownButton<String>(
                      value: selected,
                      onChanged: (String value) {
                        setState(() {
                          selected = value;
                        });
                      },
                      items: items.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList()
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Center(
                  child: Text(
                    "The selected season is $selected",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.red
                    ),
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
