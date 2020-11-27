import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomMultiChildLayoutWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CustomMultiChildLayoutWidgetState();
  }
}

class CustomMultiChildLayoutWidgetState
    extends State<CustomMultiChildLayoutWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Multi Child Layout'),
      ),
    );
  }
}
