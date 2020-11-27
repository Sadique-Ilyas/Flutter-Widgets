import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContainerWidgetState();
  }
}

class ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: _containerExample(),
    );
  }

  Widget _containerExample() {
    return Container(
      margin: EdgeInsets.all(60),
      padding: EdgeInsets.all(55),
      child: Text(
        'Hello Container',
        style: TextStyle(fontSize: 30),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green,
      ),
    );
  }
}
