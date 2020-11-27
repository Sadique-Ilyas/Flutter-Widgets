import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BottomSheetPersistentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomSheetPersistentWidgetState();
  }
}

class BottomSheetPersistentWidgetState
    extends State<BottomSheetPersistentWidget> {
  final scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      appBar: AppBar(
        title: Text('Bottom Sheet (Persistent)'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Show Bottom Sheet'),
          onPressed: () {
            var bottomSheetController = scaffoldState.currentState
                .showBottomSheet((context) => Container(
                      color: Colors.blueGrey,
                      child: Center(
                        child: Text(
                          'Persistent Bottom Sheet',
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ));
            bottomSheetController.closed.then(
                (value) => Fluttertoast.showToast(msg: "Bottom Sheet Closed"));
          },
        ),
      ),
    );
  }
}
