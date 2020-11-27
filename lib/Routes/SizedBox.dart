import 'package:flutter/material.dart';

class SizedBoxWidget extends StatefulWidget {
  @override
  _SizedBoxWidgetState createState() => _SizedBoxWidgetState();
}

class _SizedBoxWidgetState extends State<SizedBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sized Box'),
      ),
      body: Center(
          child: SizedBox(
        width: 200,
        height: 200,
        child: RaisedButton(
          child: Text('Sized Box'),
          onPressed: () {},
        ),
      )),
    );
  }
}
