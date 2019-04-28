import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Row and Columns Demo App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row and Column demo app"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Spice Jet",
                      style: TextStyle(
                        fontSize: 40.0,
                        fontStyle: FontStyle.italic
                      ),
                      ),
                      ),
                      Expanded(
                        child: Text(
                          "From Mumbai to Calicut via Bengaluru",
                          style: TextStyle(
                            fontSize: 30.0
                          ),
                          ),
                          )
                ],
              ),
            ),

            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Jet Airways",
                      style: TextStyle(
                        fontSize: 40.0
                      )
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "From Delhi to Jaipur",
                      style: TextStyle(
                        fontSize: 30.0
                      )
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
