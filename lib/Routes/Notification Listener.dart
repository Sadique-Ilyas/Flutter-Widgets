import 'package:flutter/material.dart';

class MyNotificationListenerWidget extends StatefulWidget {
  @override
  _MyNotificationListenerWidgetState createState() =>
      _MyNotificationListenerWidgetState();
}

class _MyNotificationListenerWidgetState
    extends State<MyNotificationListenerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Listener'),
      ),
    );
  }
}
