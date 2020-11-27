import 'dart:ui';

import 'package:flutter/material.dart';

class MyAnimatedCrossFadeWidget extends StatefulWidget {
  @override
  _MyAnimatedCrossFadeWidgetState createState() =>
      _MyAnimatedCrossFadeWidgetState();
}

class _MyAnimatedCrossFadeWidgetState extends State<MyAnimatedCrossFadeWidget> {
  bool isShowing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Cross Fade'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              firstChild: Container(
                width: 100,
                height: 100,
                child: new LayoutBuilder(builder: (context, constraint) {
                  return Icon(Icons.image, size: constraint.biggest.height);
                }),
              ),
              secondChild: Container(
                  width: 100, height: 100, child: Image.asset("assets/A.gif")),
              duration: Duration(seconds: 1),
              crossFadeState: isShowing
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
            ),
            RaisedButton(
              child: isShowing ? Text('Hide Image') : Text('Show Image'),
              onPressed: () {
                setState(() {
                  if (isShowing) {
                    isShowing = false;
                  } else {
                    isShowing = true;
                  }
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
