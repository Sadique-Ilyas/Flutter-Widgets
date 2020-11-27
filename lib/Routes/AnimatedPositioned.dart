import 'package:flutter/material.dart';

class MyAnimatedPositionedWidget extends StatefulWidget {
  @override
  _MyAnimatedPositionedWidgetState createState() =>
      _MyAnimatedPositionedWidgetState();
}

class _MyAnimatedPositionedWidgetState
    extends State<MyAnimatedPositionedWidget> {
  bool showMessage = false;
  String showMessageText = "Show";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animated Positioned'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text(showMessageText),
          onPressed: () {
            setState(() {
              if (showMessage) {
                showMessage = false;
                showMessageText = "Show";
              } else {
                showMessage = true;
                showMessageText = "Hide";
              }
            });
          },
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.blue,
            child: Stack(
              children: [
                Positioned(
                    bottom: 100,
                    right: 100,
                    child: Text(
                      "FOUND ME :)",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                AnimatedPositioned(
                    bottom: showMessage ? 50 : 100,
                    right: 90,
                    child: Container(
                      width: 140,
                      height: 40,
                      color: Colors.yellow,
                    ),
                    duration: Duration(seconds: 1))
              ],
            ),
          ),
        ));
  }
}
