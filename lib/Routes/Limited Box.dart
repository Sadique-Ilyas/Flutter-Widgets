import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LimitedBoxWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LimitedBoxWidgetState();
  }
}

class LimitedBoxWidgetState extends State<LimitedBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Limited Box'),
      ),
      body: ListView(
        children: <Widget>[
          for (int i = 0; i < 20; i++)
            LimitedBox(
              maxHeight: 100,
              child: Container(
                color: _randomColor(),
              ),
            )
        ],
      ),
    );
  }

  _randomColor() {
    return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }
}
