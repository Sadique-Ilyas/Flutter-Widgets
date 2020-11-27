import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyClipOvalWidget extends StatefulWidget {
  @override
  _MyClipOvalWidgetState createState() => _MyClipOvalWidgetState();
}

class _MyClipOvalWidgetState extends State<MyClipOvalWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clip Oval'),
      ),
      body: ClipOval(
          clipper: MyCustomClipOval(),
          child: Center(child: Image.asset("assets/landscapes.jpg"))),
    );
  }
}

class MyCustomClipOval extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return Rect.fromLTWH(0, 160, size.width, 240);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
