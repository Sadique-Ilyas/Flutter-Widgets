import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlignWidget extends StatefulWidget {
  @override
  _AlignWidgetState createState() => _AlignWidgetState();
}

class _AlignWidgetState extends State<AlignWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align'),
      ),
      body: Container(
        height: 300,
        width: 300,
        color: Colors.red,
        child: Align(
          alignment: Alignment.bottomRight,
          child: Text('Align',
              style: TextStyle(fontSize: 25, color: Colors.white)),
        ),
      ),
    );
  }
}
