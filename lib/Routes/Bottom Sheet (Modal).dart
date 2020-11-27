import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BottomSheetModalWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomSheetModalWidgetState();
  }
}

class BottomSheetModalWidgetState extends State<BottomSheetModalWidget> {
  final scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      appBar: AppBar(
        title: Text('Bottom Sheet (Modal)'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Show Bottom Sheet'),
          onPressed: () {
            _showModalBottomSheet();
          },
        ),
      ),
    );
  }

  void _showModalBottomSheet() {
    Future<void> future = showModalBottomSheet(
        context: scaffoldState.currentState.context,
        builder: (context) => Container(
              height: 250,
              child: Center(
                child: Text(
                  'Modal Bottom Sheet',
                  style: TextStyle(fontSize: 25.0),
                ),
              ),
            ));
    future.then((value) => Fluttertoast.showToast(msg: "Bottom Sheet Closed"));
  }
}
