import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MySelectableTextWidget extends StatefulWidget {
  @override
  _MySelectableTextWidgetState createState() => _MySelectableTextWidgetState();
}

class _MySelectableTextWidgetState extends State<MySelectableTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selectable Text'),
      ),
      body: Center(
        child: Container(
            height: 300,
            padding: EdgeInsets.all(10),
            color: Colors.blue,
            child: Column(
              children: <Widget>[
                SelectableText(
                  'Hey Guys ! Hell...This is my Selectable Text. Long Press on the'
                  ' Text to select it. And then you can copy, cut, paste and '
                  'select all. But you can only copy and select all from this '
                  'text, because there is no way to cut or paste anything here.',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  showCursor: true,
                  cursorColor: Colors.red,
                  cursorHeight: 5,
                  cursorWidth: 10,
                  cursorRadius: Radius.circular(20),
                  onTap: () {
                    Fluttertoast.showToast(msg: 'Tapped !!!');
                  },
                  toolbarOptions: ToolbarOptions(
                      copy: true, cut: true, paste: true, selectAll: true),
                ),
                SelectableText.rich(TextSpan(children: [
                  TextSpan(
                      text: 'This is a Rich Text',
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Fluttertoast.showToast(msg: "Clicked !");
                        })
                ]))
              ],
            )),
      ),
    );
  }
}
