import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyDraggableWidget extends StatefulWidget {
  @override
  _MyDraggableWidgetState createState() => _MyDraggableWidgetState();
}

class _MyDraggableWidgetState extends State<MyDraggableWidget> {
  String _myData = "Drag me";
  String _myDragData = "Drop Here";

  Color dropColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draggable'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Draggable<String>(
              data: _myData,
              child: myBlueBox(),
              childWhenDragging: myCircularBlueBox(),
              feedback: myGreenBox(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: DragTarget<String>(
              builder: (context, accepted, rejected) {
                if (accepted.isNotEmpty) {
                  return Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                    child: Center(child: Text(_myDragData)),
                  );
                }
                return Container(
                    width: 100,
                    height: 100,
                    color: dropColor,
                    child: Center(child: Text(_myDragData)));
              },
              onWillAccept: (data) {
                if (data == _myData) {
                  return true;
                }
                return true;
              },
              onAccept: (data) {
                setState(() {
                  _myDragData = "Dropped";
                  dropColor = Colors.green;
                });
              },
              onLeave: (data) {
                Fluttertoast.showToast(msg: "Didn't land");
                _myDragData = "Drop Here";
              },
              onMove: (data) {
                setState(() {
                  _myDragData = "Moving";
                });
              },
            ),
          )
        ],
      )),
    );
  }

  myBlueBox() {
    return Container(
      color: Colors.blue,
      width: 100,
      height: 100,
      child: Center(child: Text(_myData)),
    );
  }

  myCircularBlueBox() {
    return Container(
      width: 100,
      height: 100,
      color: Colors.green,
    );
  }

  myGreenBox() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.all(Radius.circular(25))),
    );
  }
}
