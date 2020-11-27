import 'package:flutter/material.dart';

class MySpacerWidget extends StatefulWidget {
  @override
  _MySpacerWidgetState createState() => _MySpacerWidgetState();
}

class _MySpacerWidgetState extends State<MySpacerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spacer'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
            Spacer(flex: 2),
            Container(
              width: 50,
              height: 50,
              color: Colors.green,
            ),
            Spacer(flex: 1),
            Container(
              width: 50,
              height: 50,
              color: Colors.redAccent,
            ),
            Spacer(flex: 4),
            Container(
              width: 50,
              height: 50,
              color: Colors.yellowAccent,
            ),
          ],
        ),
      ),
    );
  }
}
