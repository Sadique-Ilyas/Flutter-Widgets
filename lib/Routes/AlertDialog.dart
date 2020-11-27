import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyAlertDialogWidget extends StatefulWidget {
  @override
  _MyAlertDialogWidgetState createState() => _MyAlertDialogWidgetState();
}

class _MyAlertDialogWidgetState extends State<MyAlertDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
            'Show Alert Dialog',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.blue,
          onPressed: () {
            createAlertDialog();
          },
        ),
      ),
    );
  }

  createAlertDialog() {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Image(
              width: 100,
              height: 100,
              image: AssetImage("assets/A.gif"),
            ),
            content: Text(
              'Do you want to eat Apple ?',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            actions: [
              FlatButton(
                onPressed: () {
                  Fluttertoast.showToast(msg: 'Yes :)');
                  Navigator.pop(context);
                },
                child: Text('Yes'),
                color: Colors.blue,
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('No')),
            ],
            elevation: 30,
            backgroundColor: Colors.cyanAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(40))),
          );
        },
        barrierDismissible: false);
  }
}
