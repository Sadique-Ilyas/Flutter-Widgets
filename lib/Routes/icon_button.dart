import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class myIconButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myIconButtonState();
  }
}

class myIconButtonState extends State<myIconButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Button'),
      ),
      body: Center(
        child: IconButton(
          onPressed: () {
            Fluttertoast.showToast(msg: "Clicked");
          },
          icon: Icon(Icons.home),
          color: Colors.indigo,
          highlightColor: Colors.yellow,
          splashColor: Colors.red,
          tooltip: 'Home',
          iconSize: 50.0,
        ),
      ),
    );
  }
}
