import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlowWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FlowWidgetState();
  }
}

class FlowWidgetState extends State<FlowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flow'),
      ),
      body: Flow(
        delegate: _MyFlowDelegate(),
        children: <Widget>[
          //horizontal
          _colorBox(Colors.red), // 0
          _colorBox(Colors.lightGreen), // 1
          _colorBox(Colors.deepPurple), // 2
          _colorBox(Colors.blueAccent), // 3
          _colorBox(Colors.deepOrange), // 4

          // vertical
          _colorBox(Colors.cyan), // 5
          _colorBox(Colors.pinkAccent), // 6
          _colorBox(Colors.orangeAccent), // 7
          _colorBox(Colors.deepPurpleAccent), // 8
          _colorBox(Colors.limeAccent), // 9
        ],
      ),
    );
  }

  _colorBox(Color color) {
    return Container(
      width: 50,
      height: 50,
      color: color,
      margin: EdgeInsets.all(4.0),
    );
  }
}

class _MyFlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    for (int i = 0; i < context.childCount; i++) {
      if (i < 5) {
        double dx = context.getChildSize(i).width * i;
        context.paintChild(i, transform: Matrix4.translationValues(dx, 0, 0));
      } else {
        double dy = context.getChildSize(i).height * (i - 4);
        context.paintChild(i, transform: Matrix4.translationValues(0, dy, 0));
      }
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    return true;
  }
}
