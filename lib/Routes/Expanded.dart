import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ExpandedWidgetState();
  }
}

class ExpandedWidgetState extends State<ExpandedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: squareBox(),
            flex: 1,
          ),
          Expanded(
            child: squareBox(),
            flex: 3,
          ),
          squareBox(),
        ],
      ),
    );
  }

  squareBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 80,
        height: 80,
        color: Colors.red,
      ),
    );
  }
}
