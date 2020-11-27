import 'package:flutter/material.dart';

class MyMediaQueryWidget extends StatefulWidget {
  @override
  _MyMediaQueryWidgetState createState() => _MyMediaQueryWidgetState();
}

class _MyMediaQueryWidgetState extends State<MyMediaQueryWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Media Query'),
      ),
    );
  }
}
