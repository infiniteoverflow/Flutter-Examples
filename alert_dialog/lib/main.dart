import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  )
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Button and Alert Dialog Demo"),
        ),
        body: Center(
            child: Container(
          width: 300.0,
          height: 100.0,
          child: RaisedButton(
            child: Text(
              "Click me",
              style: TextStyle(fontSize: 30.0),
            ),
            elevation: 10.0,
            color: Colors.deepOrange,
            onPressed: () =>alertDialog(context)
          ),
        )),
      );
  }

  void alertDialog(BuildContext context) {
    AlertDialog alertD = AlertDialog(
      title: Text("Flight Booked Successfully"),
      content: Text("Have a pleasant flight"),
    );

    showDialog(context: context, builder: (BuildContext context) => alertD);
  }
}
