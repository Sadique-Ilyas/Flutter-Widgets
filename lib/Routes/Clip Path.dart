import 'package:flutter/material.dart';

class MyClipPathWidget extends StatefulWidget {
  @override
  _MyClipPathWidgetState createState() => _MyClipPathWidgetState();
}

class _MyClipPathWidgetState extends State<MyClipPathWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clip Path'),
      ),
      body: ClipPath(
        child: Container(
          color: Colors.red,
        ),
        clipper: MyCustomClipper(),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<dynamic> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
