import 'package:flutter/material.dart';

class MyAnimatedPaddingWidget extends StatefulWidget {
  @override
  _MyAnimatedPaddingWidgetState createState() =>
      _MyAnimatedPaddingWidgetState();
}

class _MyAnimatedPaddingWidgetState extends State<MyAnimatedPaddingWidget> {
  double animPadding = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Padding'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            animPadding += 10;
          });
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedPadding(
                duration: Duration(seconds: 1),
                padding: EdgeInsets.all(animPadding),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              AnimatedPadding(
                duration: Duration(seconds: 1),
                padding: EdgeInsets.all(animPadding),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedPadding(
                duration: Duration(seconds: 1),
                padding: EdgeInsets.all(animPadding),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              AnimatedPadding(
                duration: Duration(seconds: 1),
                padding: EdgeInsets.all(animPadding),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
