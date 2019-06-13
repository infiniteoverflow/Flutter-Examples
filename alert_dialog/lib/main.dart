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
          child: IconButton(
              icon: Icon(Icons.phone_android),
              onPressed: () {
                alertDialog(context);
              }
          )
        )),
      );
  }

  void alertDialog(BuildContext context) {

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Phone Error !!"
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  "Your Phone has become hot"
                ),
                Text(
                  "Put it in water :D"
                )
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(
                "I Understand"
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      }
    );

  }
}
