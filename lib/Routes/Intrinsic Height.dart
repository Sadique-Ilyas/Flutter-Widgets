import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class IntrinsicHeightWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IntrinsicHeightWidgetState();
  }
}

class IntrinsicHeightWidgetState extends State<IntrinsicHeightWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intrinsic Height'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _myIntrinsicHeight(120, Colors.red),
            _myIntrinsicHeight(100, Colors.green),
            _myIntrinsicHeight(80, Colors.blue),
            _myIntrinsicHeight(60, Colors.yellow),
          ],
        ),
      ),
    );
  }

  _myIntrinsicHeight(double height, MaterialColor color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IntrinsicHeight(
          child: Container(
            height: height / 2,
            width: 1.0,
            child: Container(
              color: color,
            ),
          ),
        ),
        IntrinsicHeight(
          child: Container(
            height: height,
            width: 20.0,
            child: Container(
              color: color,
            ),
          ),
        ),
        IntrinsicHeight(
          child: Container(
            height: height / 2,
            width: 1.0,
            child: Container(
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
