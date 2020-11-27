import 'package:flutter/material.dart';

class MySemanticsWidget extends StatefulWidget {
  @override
  _MySemanticsWidgetState createState() => _MySemanticsWidgetState();
}

class _MySemanticsWidgetState extends State<MySemanticsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Semantics'),
      ),
      body: Center(
        child: Container(
            width: 250,
            height: 250,
            color: Colors.blue,
            child: Semantics(
              child: Image(
                width: 100,
                height: 100,
                image: AssetImage("assets/A.gif"),
              ),
              label: "Image of an Apple",
              enabled: true,
              readOnly: true,
            )),
      ),
    );
  }
}
