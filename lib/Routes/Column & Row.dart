import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnRowWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ColumnRowWidgetState();
  }
}

class ColumnRowWidgetState extends State<ColumnRowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column & Rows'),
      ),
      body: _columnExample(),
    );
  }

  Widget _columnExample() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // start of horizontal line
      crossAxisAlignment: CrossAxisAlignment.center,
      // center of vertical line
      children: <Widget>[
        RaisedButton(
          onPressed: () {},
          child: Text('Column'),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text('Column'),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text('Column'),
        ),
        _rowExample()
      ],
    );
  }

  Widget _rowExample() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          onPressed: () {},
          child: Text('Row'),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text('Row'),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text('Row'),
        ),
      ],
    );
  }
}
