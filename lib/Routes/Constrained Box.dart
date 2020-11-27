import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConstrainedBoxWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ConstrainedBoxWidgetState();
  }
}

class ConstrainedBoxWidgetState extends State<ConstrainedBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Constrained Box'),
        ),
        body: _constrainedBoxExample());
  }
}

Widget _constrainedBoxExample() {
  return ConstrainedBox(
    constraints: BoxConstraints(
        maxHeight: 300, maxWidth: 300, minHeight: 200, minWidth: 200),
    child: Container(
      width: 200,
      // if container width is increased to 1000, it won't increase because maxWidth of BoxConstraints is set to 300, same for minWidth
      height: 200,
      // if container height is increased to 1000, it won't increase because maxHeight of BoxConstraints is set to 300, same for minHeight
      color: Colors.blue,
      child: Center(
          child: Text(
        'Constrained Box',
        style: TextStyle(color: Colors.white),
      )),
    ),
  );
}
