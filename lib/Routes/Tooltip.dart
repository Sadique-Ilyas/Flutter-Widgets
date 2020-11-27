import 'package:flutter/material.dart';

class TooltipWidget extends StatefulWidget {
  @override
  _TooltipWidgetState createState() => _TooltipWidgetState();
}

class _TooltipWidgetState extends State<TooltipWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToolTip'),
      ),
      body: Tooltip(
        message: 'This is a ToolTip',
        child: Center(
          child: Container(
            alignment: Alignment.center,
            width: 200,
            height: 200,
            color: Colors.red,
            child: Text(
              'Long Press',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
