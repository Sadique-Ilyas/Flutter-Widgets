import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyIgnorePointerWidget extends StatefulWidget {
  @override
  _MyIgnorePointerWidgetState createState() => _MyIgnorePointerWidgetState();
}

class _MyIgnorePointerWidgetState extends State<MyIgnorePointerWidget> {
  bool isEnable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ignore Pointer'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text(isEnable ? 'Disable' : 'Enable'),
        onPressed: () {
          setState(() {
            this.isEnable = !this.isEnable;
          });
        },
      ),
      body: IgnorePointer(
        ignoring: !isEnable,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text(isEnable ? 'Enable' : 'Disable'),
                onPressed: () {
                  Fluttertoast.showToast(msg: 'Tapped !');
                },
              ),
              RaisedButton(
                child: Text(isEnable ? 'Enable' : 'Disable'),
                onPressed: () {
                  Fluttertoast.showToast(msg: 'Tapped !');
                },
              ),
              RaisedButton(
                child: Text(isEnable ? 'Enable' : 'Disable'),
                onPressed: () {
                  Fluttertoast.showToast(msg: 'Tapped !');
                },
              ),
              RaisedButton(
                child: Text(isEnable ? 'Enable' : 'Disable'),
                onPressed: () {
                  Fluttertoast.showToast(msg: 'Tapped !');
                },
              ),
              RaisedButton(
                child: Text(isEnable ? 'Enable' : 'Disable'),
                onPressed: () {
                  Fluttertoast.showToast(msg: 'Tapped !');
                },
              ),
              RaisedButton(
                child: Text(isEnable ? 'Enable' : 'Disable'),
                onPressed: () {
                  Fluttertoast.showToast(msg: 'Tapped !');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
