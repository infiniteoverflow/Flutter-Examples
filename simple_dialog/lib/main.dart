import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'SimpleDialog Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

enum Movies {Marvel,DC}

class _MyHomePageState extends State<MyHomePage> {

  String selectedMovie = " ";

  Future<void> openDialog() async {
    switch(await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text(
            "Choose a Movie"
          ),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context,Movies.Marvel);
              },
              child: Text("Marvel"),
            ),

            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context,Movies.DC);
              },
              child: Text("DC"),
            )
          ],
        );
      }
    )) {
      case Movies.Marvel: setState(() {
        selectedMovie = "Marvel";
      });
      break;

      case Movies.DC: setState(() {
        selectedMovie = "DC";
      });
      break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SimpleDialog Demo"
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 150.0),
              child: IconButton(
                icon: Icon(Icons.movie),
                onPressed: () {
                  openDialog();
                },
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top:20.0),
              child: Text(
                "The selected movie is $selectedMovie",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.deepOrange
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
