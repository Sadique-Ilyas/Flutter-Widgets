import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyCupertinoActionSheetWidget extends StatefulWidget {
  @override
  _MyCupertinoActionSheetWidgetState createState() =>
      _MyCupertinoActionSheetWidgetState();
}

class _MyCupertinoActionSheetWidgetState
    extends State<MyCupertinoActionSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertino Action Sheet'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Cupertino Action Sheet'),
          onPressed: () {
            return showCupertinoModalPopup(
                context: context,
                builder: (context) {
                  return CupertinoActionSheet(
                    title: Text(
                      'What do you want to do ?',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                    actions: [
                      CupertinoActionSheetAction(
                          onPressed: () {
                            Fluttertoast.showToast(msg: 'Copy');
                          },
                          child: Text('Copy')),
                      CupertinoActionSheetAction(
                          onPressed: () {
                            Fluttertoast.showToast(msg: 'Merge');
                          },
                          child: Text('Merge')),
                      CupertinoActionSheetAction(
                        onPressed: () {
                          Fluttertoast.showToast(msg: 'Don\'t Copy');
                        },
                        child: Text('Don\'t Copy'),
                        isDefaultAction: true,
                      ),
                    ],
                    cancelButton: CupertinoActionSheetAction(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Cancel'),
                        isDestructiveAction: true),
                  );
                });
          },
        ),
      ),
    );
  }
}
