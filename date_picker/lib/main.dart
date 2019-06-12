import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Date Picker Demo",
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  DateTime _date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Date Picker Demo"
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 150.0),
                child: RaisedButton(
                  onPressed: () {
                    selectDate(context);
                  },
                child: Text(
                  "Choose Date !!"
                ),
                color: Colors.red,
                textColor: Colors.white,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                "The selected date is $_date",
                style: TextStyle(
                  fontSize: 15.0
                ),
              ),
            )
          ],
        )
      )
    );
  }

  Future<Null> selectDate (BuildContext context) async {

    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(1970),
        lastDate: DateTime(2021)
    );

    if(picked!=null && picked!=_date) {
      setState(() {
        _date = picked;
      });
    }

  }
}