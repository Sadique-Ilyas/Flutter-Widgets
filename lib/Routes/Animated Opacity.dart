import 'package:flutter/material.dart';

class MyAnimatedOpacityWidget extends StatefulWidget {
  @override
  _MyAnimatedOpacityWidgetState createState() =>
      _MyAnimatedOpacityWidgetState();
}

class _MyAnimatedOpacityWidgetState extends State<MyAnimatedOpacityWidget> {
  var _opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Opacity'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedOpacity(
                  duration: const Duration(seconds: 1),
                  opacity: _opacity,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.yellow,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                    child: Text('Visible'),
                    onPressed: () {
                      setState(() {
                        _opacity = 1.0;
                      });
                    }),
                RaisedButton(
                    child: Text('Hide'),
                    onPressed: () {
                      setState(() {
                        _opacity = 0.0;
                      });
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
