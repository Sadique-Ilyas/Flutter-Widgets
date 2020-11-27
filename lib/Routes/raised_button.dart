import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class myRaisedButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myRaisedButtonState();
  }
}

class myRaisedButtonState extends State<myRaisedButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Raised Button'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Click Me !!!'),
          onPressed: () {
            Fluttertoast.showToast(msg: "Clicked !!!");
          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22.0),
              side: BorderSide(color: Colors.lightGreenAccent, width: 4.0)),
          color: Colors.lightBlueAccent,
        ),
      ),
    );
  }
}
