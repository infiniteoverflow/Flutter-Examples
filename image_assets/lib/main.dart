import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Image Asset App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Asset App"),
        ),
        body: Center(
          child: ImageAssets(),
        ),
      ),
    );
  }
}

class ImageAssets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var assetImage = AssetImage('assets/puppy.jpeg');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
      width: 500.0,
      height: 500.0,);
  }

}
