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
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(350), topRight: Radius.circular(350))),
        backgroundColor: Colors.yellow,
        barrierColor: Colors.green[100],
        elevation: 20,
        clipBehavior: Clip.antiAlias,
        builder: (context) => SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Modal Bottom Sheet',
                      style: TextStyle(fontSize: 25.0),
                    ),
                    TextField(),
                    TextField(),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: TextField(),
                    ),
                  ],
                ),
              ),
            ));
    future.then((value) => Fluttertoast.showToast(msg: "Bottom Sheet Closed"));
  }
}
