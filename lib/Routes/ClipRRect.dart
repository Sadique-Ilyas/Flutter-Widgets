import 'package:flutter/material.dart';

class ClipRRectWidget extends StatefulWidget {
  @override
  _ClipRRectWidgetState createState() => _ClipRRectWidgetState();
}

class _ClipRRectWidgetState extends State<ClipRRectWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipRRect'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 120,
                  width: 120,
                  color: Colors.green,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipOval(
                child: Container(
                  height: 120,
                  width: 120,
                  color: Colors.green,
                ),
              ),
            ),
            ClipPath(
              child: Container(
                height: 120,
                width: 120,
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}
