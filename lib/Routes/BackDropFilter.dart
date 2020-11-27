import 'dart:ui';

import 'package:flutter/material.dart';

class BackDropFilterWidget extends StatefulWidget {
  @override
  _BackDropFilterWidgetState createState() => _BackDropFilterWidgetState();
}

class _BackDropFilterWidgetState extends State<BackDropFilterWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back Drop Filter [Image Filter]'),
      ),
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          color: Colors.black.withOpacity(0),
        ),
      ),
    );
  }
}
