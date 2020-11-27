import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCupertinoActivityWidget extends StatefulWidget {
  @override
  _MyCupertinoActivityWidgetState createState() =>
      _MyCupertinoActivityWidgetState();
}

class _MyCupertinoActivityWidgetState extends State<MyCupertinoActivityWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertino Activity Indicator'),
      ),
      body: Center(
        child: CupertinoActivityIndicator(
          radius: 25,
          animating: true,
        ),
      ),
    );
  }
}
