import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "List View App",
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Demo App"),
      ),
      body: getList(context, getListElements()),
    );
  }

  List<String> getListElements() {
    var items = List<String>.generate(1000, (counter) => "Item $counter");
    return items;
  }

  Widget getList(BuildContext context, List<String> items) {
    var listItems = getListElements();

    var listView = ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        leading: Icon(Icons.laptop_mac),
        title: Text(listItems[index]),
        onTap: () {
          debugPrint('${listItems[index]} was tapped');
        },
      );
    });

    return listView;
  }
}
