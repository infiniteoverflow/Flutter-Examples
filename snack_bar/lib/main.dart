import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "SnackBar Demo",
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "SnackBar Demo"
        ),
      ),
      body: MyApp(),
    ),
  )
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 260.0),
            child: RaisedButton(
              child: Text(
                "Press me For a normal SnackBar"
              ),
              elevation: 6.0,
              color: Colors.orangeAccent,
              onPressed: () {
                normalSnackBar(context);
              },
            ),
          ),
          RaisedButton(
              child: Text(
                "Press me for a Snackbar with an action"
              ),
              elevation: 6.0,
              color: Colors.yellow,
              onPressed: () {
                actionSnackBar(context);
              },
            ),
          ],
      ),
      );
  }

  void normalSnackBar(BuildContext context) {
    var snackBar = SnackBar(
      content: Text(
        "You hav pressed the button"
      ),
    );

    Scaffold.of(context).showSnackBar(snackBar);
  }

  void actionSnackBar(BuildContext context) {
    var snackBar = SnackBar(
      content: Text(
        "You pressed a action Snackbar"
      ),
      action: SnackBarAction(
        label: "Undo",
        onPressed: () {

        },
      ),
    );

    Scaffold.of(context).showSnackBar(snackBar);
  }
}
