import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OpacityWidget2 extends StatefulWidget {
  @override
  _OpacityWidget2State createState() => _OpacityWidget2State();
}

class _OpacityWidget2State extends State<OpacityWidget2> {
  var _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Opacity [Page 2]'),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Container(
                width: 300,
                height: 300,
                child: Stack(
                  children: <Widget>[
                    Center(
                        child: RaisedButton(
                            child: Text('U found me'), onPressed: () {})),
                    AnimatedOpacity(
                      duration: Duration(seconds: 1),
                      opacity: _opacity,
                      child: Container(
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                    child: Text('Visible'),
                    onPressed: () {
                      setState(() {
                        _opacity = 0.0;
                      });
                    }),
                RaisedButton(
                    child: Text('Hide'),
                    onPressed: () {
                      setState(() {
                        _opacity = 1.0;
                      });
                    }),
              ],
            )
          ],
        ));
  }
}
