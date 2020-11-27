import 'package:flutter/material.dart';

class WrapWidget extends StatefulWidget {
  @override
  _WrapWidgetState createState() => _WrapWidgetState();
}

class _WrapWidgetState extends State<WrapWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Wrap(
            children: <Widget>[
              RaisedButton(child: Text('Button 1'), onPressed: () {}),
              RaisedButton(child: Text('Button 1'), onPressed: () {}),
              RaisedButton(child: Text('Button 1'), onPressed: () {}),
              RaisedButton(child: Text('Button 1'), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
