import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ValueListenableBuilderWidget extends StatefulWidget {
  @override
  _ValueListenableBuilderWidgetState createState() =>
      _ValueListenableBuilderWidgetState();
}

class _ValueListenableBuilderWidgetState
    extends State<ValueListenableBuilderWidget> {
  var angle = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    print("build method called");
    return Scaffold(
      appBar: AppBar(
        title: Text('Value Listenable Builder'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              ValueListenableBuilder(
                  valueListenable: angle,
                  builder: (context, angle, child) {
                    return Transform.rotate(
                      angle: angle * (pi / 180),
                      child: child,
                    );
                  },
                  child: getContainer()),
              ValueListenableBuilder(
                  valueListenable: angle,
                  builder: (context, angle, child) {
                    return Transform.rotate(
                      angle: angle * (pi / 180),
                      child: child,
                    );
                  },
                  child: getContainer()),
              ValueListenableBuilder(
                  valueListenable: angle,
                  builder: (context, angle, child) {
                    return Transform.rotate(
                      angle: angle * (pi / 180),
                      child: child,
                    );
                  },
                  child: getContainer())
            ],
          ),
          Row(
            children: <Widget>[
              ValueListenableBuilder(
                  valueListenable: angle,
                  builder: (context, angle, child) {
                    return Transform.rotate(
                      angle: angle * (pi / 180),
                      child: child,
                    );
                  },
                  child: getContainer()),
              ValueListenableBuilder(
                  valueListenable: angle,
                  builder: (context, angle, child) {
                    return Transform.rotate(
                      angle: angle * (pi / 180),
                      child: child,
                    );
                  },
                  child: getContainer()),
              ValueListenableBuilder(
                  valueListenable: angle,
                  builder: (context, angle, child) {
                    return Transform.rotate(
                      angle: angle * (pi / 180),
                      child: child,
                    );
                  },
                  child: getContainer())
            ],
          ),
          Row(
            children: <Widget>[
              ValueListenableBuilder(
                  valueListenable: angle,
                  builder: (context, angle, child) {
                    return Transform.rotate(
                      angle: angle * (pi / 180),
                      child: child,
                    );
                  },
                  child: getContainer()),
              ValueListenableBuilder(
                  valueListenable: angle,
                  builder: (context, angle, child) {
                    return Transform.rotate(
                      angle: angle * (pi / 180),
                      child: child,
                    );
                  },
                  child: getContainer()),
              ValueListenableBuilder(
                  valueListenable: angle,
                  builder: (context, angle, child) {
                    return Transform.rotate(
                      angle: angle * (pi / 180),
                      child: child,
                    );
                  },
                  child: getContainer())
            ],
          ),
          Row(
            children: <Widget>[
              ValueListenableBuilder(
                  valueListenable: angle,
                  builder: (context, angle, child) {
                    return Transform.rotate(
                      angle: angle * (pi / 180),
                      child: child,
                    );
                  },
                  child: getContainer()),
              ValueListenableBuilder(
                  valueListenable: angle,
                  builder: (context, angle, child) {
                    return Transform.rotate(
                      angle: angle * (pi / 180),
                      child: child,
                    );
                  },
                  child: getContainer()),
              ValueListenableBuilder(
                  valueListenable: angle,
                  builder: (context, angle, child) {
                    return Transform.rotate(
                      angle: angle * (pi / 180),
                      child: child,
                    );
                  },
                  child: getContainer())
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.rotate_right),
        onPressed: () {
          setState(() {
            angle.value = angle.value + 30;
          });
        },
      ),
    );
  }

  getContainer() {
    print("FUNCTION CALLED");
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
    );
  }
}
