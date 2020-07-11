import 'package:flutter/material.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Circular FAB'),
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


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
       
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(
          ""
        )
      ),
      floatingActionButton: FabCircularMenu(
        fabColor: Colors.amber,
        fabOpenColor: Colors.amber,
        fabCloseColor: Colors.amber,
        ringColor: Colors.deepOrangeAccent[200],
        ringDiameter: 320,
        children: <Widget>[
          RawMaterialButton(
            onPressed: () {

            },
            shape: CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home, color: Colors.black,size: 35,),
                Text(
                  "HOME",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white
                  ),
                )
              ],
            ),
          ),
          
          RawMaterialButton(
            onPressed: () {

            },
            shape: CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.search, color: Colors.black,size: 35,),
                Text(
                  "SEARCH",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white
                  ),
                )
              ],
            ),
          ),

          RawMaterialButton(
            onPressed: () {

            },
            shape: CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.settings, color: Colors.black,size: 35,),
                Text(
                  "SETTINGS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white
                  ),
                )
              ],
            ),
          ),

          
        ]
      )
    );
  }
}
