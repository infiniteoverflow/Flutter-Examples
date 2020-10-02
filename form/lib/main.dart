import 'package:flutter/material.dart';
import 'package:form/validators.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Form Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _key = GlobalKey<FormState>();

  bool _validate = false;
  String name, email, phoneNumber;

  _showAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("All fields have been validated!"),
          content:
              Text("Name: $name, E-mail: $email, Phone Number: $phoneNumber"),
          actions: [FlatButton(onPressed: () {}, child: Text("Ok"))],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Form(
            autovalidate: _validate,
            key: _key,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(hintText: "Name"),
                  maxLength: 40,
                  keyboardType: TextInputType.name,
                  validator: nameValidator,
                  onSaved: (String text) {
                    name = text;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "E-mail"),
                  maxLength: 40,
                  keyboardType: TextInputType.emailAddress,
                  validator: emailValidator,
                  onSaved: (String text) {
                    email = text;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Phone Number"),
                  maxLength: 8,
                  keyboardType: TextInputType.phone,
                  validator: phoneNumberValidator,
                  onSaved: (String text) {
                    phoneNumber = text;
                  },
                ),
                RaisedButton(
                  onPressed: () {
                    if (_key.currentState.validate()) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("All fields have been validated!"),
                            actions: [
                              FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Ok"))
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: Text('Validate'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
