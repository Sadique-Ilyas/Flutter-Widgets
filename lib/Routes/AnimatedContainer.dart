import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  @override
  _AnimatedContainerWidgetState createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  var color = Colors.red;
  double height = 300;
  double width = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animated Container'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedContainer(
                height: height,
                width: width,
                color: color,
                duration: Duration(seconds: 3),
              ),
              RaisedButton(
                  child: Text('Change Color'),
                  onPressed: () {
                    setState(() {
                      height = height - 50;
                      width = width - 50;
                      if (color == Colors.green) {
                        color = Colors.red;
                      } else {
                        color = Colors.green;
                      }
                    });
                  })
            ],
          ),
        ));
  }
}
