import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class myRichText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myRichTextState();
  }
}

class myRichTextState extends State<myRichText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rich Text'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: RichText(
            text: TextSpan(
              text: "I am inevitable",
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: ' Iron Man',
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Fluttertoast.showToast(msg: "Orange Clicked !!1");
                      }),
                TextSpan(
                  text: ' Am always Angry',
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                    text: ' With Great Power, comes Great Responsibilities',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Fluttertoast.showToast(msg: "Green Clicked !!1");
                      }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
