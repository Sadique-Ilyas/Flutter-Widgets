import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class myFlatButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myFlatButtonState();
  }
}

class myFlatButtonState extends State<myFlatButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flat Button'),
        centerTitle: true,
      ),
      body: Center(
        child: FlatButton(
          child: Text('Click Me'),
          onPressed: () {
            Fluttertoast.showToast(
                msg: "Clicked !!!",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: Colors.black,
                textColor: Colors.white,
                fontSize: 16.0);
          },
        ),
      ),
    );
  }
}
