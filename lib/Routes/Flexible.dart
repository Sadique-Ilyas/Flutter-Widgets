import 'package:flutter/material.dart';

class MyFlexibleWidget extends StatefulWidget {
  @override
  _MyFlexibleWidgetState createState() => _MyFlexibleWidgetState();
}

class _MyFlexibleWidgetState extends State<MyFlexibleWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.redAccent,
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.green,
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
