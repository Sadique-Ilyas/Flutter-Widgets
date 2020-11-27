import 'package:flutter/material.dart';

class InheritedModelWidget extends StatefulWidget {
  @override
  _InheritedModelWidgetState createState() => _InheritedModelWidgetState();
}

class _InheritedModelWidgetState extends State<InheritedModelWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inherited Model'),
      ),
    );
  }
}
