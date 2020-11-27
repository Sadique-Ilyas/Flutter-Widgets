import 'package:flutter/material.dart';

class CustomPaintWidget extends StatefulWidget {
  @override
  _CustomPaintWidgetState createState() => _CustomPaintWidgetState();
}

class _CustomPaintWidgetState extends State<CustomPaintWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Paint'),
      ),
    );
  }
}
