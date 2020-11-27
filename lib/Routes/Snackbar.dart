import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MySnackBarWidget extends StatefulWidget {
  @override
  _MySnackBarWidgetState createState() => _MySnackBarWidgetState();
}

class _MySnackBarWidgetState extends State<MySnackBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: Center(
        child: Builder(
          builder: (context) {
            return RaisedButton(
              child: Text('Show SnackBar'),
              onPressed: () {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('This is a SnackBar'),
                  width: 300,
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  behavior: SnackBarBehavior.floating,
                  action: SnackBarAction(
                    label: "Yes",
                    textColor: Colors.pinkAccent,
                    onPressed: () {
                      Fluttertoast.showToast(msg: 'Tapped !');
                    },
                  ),
                ));
              },
            );
          },
        ),
      ),
    );
  }
}
