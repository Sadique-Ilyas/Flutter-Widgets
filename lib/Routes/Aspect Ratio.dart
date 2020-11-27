import 'package:flutter/material.dart';

class MyAspectRatioWidget extends StatefulWidget {
  @override
  _MyAspectRatioWidgetState createState() => _MyAspectRatioWidgetState();
}

class _MyAspectRatioWidgetState extends State<MyAspectRatioWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aspect Ratio'),
      ),
      body: AspectRatio(
        aspectRatio: 3 / 1,
        child: Container(
          color: Colors.green,
          child: Center(
            child: Text('Aspect Ratio = 3 : 1 (width : height)'),
          ),
        ),
      ),
    );
  }
}
