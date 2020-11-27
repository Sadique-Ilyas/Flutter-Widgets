import 'package:flutter/material.dart';

import 'file:///C:/Users/Sadique/AndroidStudioProjects/flutter_layout_widgets/lib/Routes/Opacity/Opacity2.dart';

class OpacityWidget extends StatefulWidget {
  @override
  _OpacityWidgetState createState() => _OpacityWidgetState();
}

class _OpacityWidgetState extends State<OpacityWidget> {
  var _opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity'),
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
                child: Opacity(
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
            RaisedButton(
                child: Text('Next'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OpacityWidget2()));
                })
          ],
        ),
      ),
    );
  }
}
