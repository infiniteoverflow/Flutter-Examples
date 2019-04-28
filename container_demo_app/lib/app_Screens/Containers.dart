import 'package:flutter/material.dart';

class ContainerClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      child: Text("This is a container",),
      color: Colors.orange,
      width:200.0,
      height: 200.0,
      margin: EdgeInsets.only(left: 20.0 , top: 30.0),
    );
  }

}