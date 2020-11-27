import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntrinsicWidthWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IntrinsicWidthWidgetState();
  }
}

class IntrinsicWidthWidgetState extends State<IntrinsicWidthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intrinsic Width'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _createMyCustomWidgets()),
      ),
    );
  }

  _createMyCustomWidgets() {
    final list = List<Widget>();
    double width = 20;
    for (int i = 0; i < 10; i++) {
      list.add(_myIntrinsicWidth(
          Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
          width));
      width += 20;
    }
    return list;
  }

  Widget _myIntrinsicWidth(Color color, double width) {
    return IntrinsicWidth(
      child: Container(
        width: width,
        height: 20.0,
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
