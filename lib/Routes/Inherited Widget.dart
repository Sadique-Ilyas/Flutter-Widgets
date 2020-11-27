import 'package:flutter/material.dart';

class MyInheritedWidget extends StatefulWidget {
  @override
  _MyInheritedWidgetState createState() => _MyInheritedWidgetState();
}

class _MyInheritedWidgetState extends State<MyInheritedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inherited Widget'),
      ),
    );
  }
}
