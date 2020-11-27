import 'package:flutter/material.dart';

class MyAnimatedSwitcherWidget extends StatefulWidget {
  @override
  _MyAnimatedSwitcherWidgetState createState() =>
      _MyAnimatedSwitcherWidgetState();
}

class _MyAnimatedSwitcherWidgetState extends State<MyAnimatedSwitcherWidget> {
  Widget _myAnimatedWidget = Center(
      child: Container(
    width: 200,
    height: 100,
    color: Colors.red,
  ));
  bool myWidget = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Switcher'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          setState(() {
            if (myWidget == false) {
              _myAnimatedWidget = Center(
                  key: ValueKey(1),
                  child: Container(
                    width: 200,
                    height: 100,
                    color: Colors.red,
                  ));
              myWidget = true;
            } else {
              _myAnimatedWidget = Center(
                  key: ValueKey(2),
                  child: Container(
                    width: 100,
                    height: 200,
                    color: Colors.greenAccent,
                  ));
              myWidget = false;
            }
          });
        },
      ),
      body: AnimatedSwitcher(
        child: _myAnimatedWidget,
        duration: const Duration(seconds: 1),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return RotationTransition(
            child: child,
            turns: animation,
          );
        },
      ),
    );
  }
}
