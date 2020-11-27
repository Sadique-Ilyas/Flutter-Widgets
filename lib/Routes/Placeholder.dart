import 'package:flutter/material.dart';

class MyPlaceholderWidget extends StatefulWidget {
  @override
  _MyPlaceholderWidgetState createState() => _MyPlaceholderWidgetState();
}

class _MyPlaceholderWidgetState extends State<MyPlaceholderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Placeholder'),
        ),
        body: Center(
          child: Container(
            height: 100,
            width: 100,
            child: Placeholder(
              fallbackWidth: 20,
              fallbackHeight: 20,
              color: Colors.red,
              strokeWidth: 10,
            ),
          ),
        ));
  }
}
