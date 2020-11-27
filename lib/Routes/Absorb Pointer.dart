import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AbsorbPointerWidget extends StatefulWidget {
  @override
  _AbsorbPointerWidgetState createState() => _AbsorbPointerWidgetState();
}

class _AbsorbPointerWidgetState extends State<AbsorbPointerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Absorb Pointer'),
      ),
      body: Center(
          child: AbsorbPointer(
        child: RaisedButton(
          child: Text('Disabled Button'),
          onPressed: () {
            Fluttertoast.showToast(msg: 'tapped');
          },
        ),
      )),
    );
  }
}
