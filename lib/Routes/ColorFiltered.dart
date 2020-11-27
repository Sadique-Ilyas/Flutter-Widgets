import 'package:flutter/material.dart';

class MyColorFilteredWidget extends StatefulWidget {
  @override
  _MyColorFilteredWidgetState createState() => _MyColorFilteredWidgetState();
}

class _MyColorFilteredWidgetState extends State<MyColorFilteredWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Filtered'),
      ),
      body: Center(
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(Colors.greenAccent, BlendMode.modulate),
          child: Image.asset("assets/A.gif"),
        ),
      ),
    );
  }
}
