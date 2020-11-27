import 'package:flutter/material.dart';

class PositionedWidget extends StatefulWidget {
  @override
  _PositionedWidgetState createState() => _PositionedWidgetState();
}

class _PositionedWidgetState extends State<PositionedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Positioned'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: 300,
            height: 300,
            color: Colors.red,
          ),
          Positioned(
            child: Icon(
              Icons.home,
              color: Colors.white,
              size: 45,
            ),
            right: 50,
            bottom: 25,
          )
        ],
      ),
    );
  }
}
