import 'package:flutter/material.dart';

class ClipRRectWidget extends StatefulWidget {
  @override
  _ClipRRectWidgetState createState() => _ClipRRectWidgetState();
}

class _ClipRRectWidgetState extends State<ClipRRectWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipRRect'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 120,
                  width: 120,
                  color: Colors.green,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipOval(
                child: Container(
                  height: 120,
                  width: 120,
                  color: Colors.green,
                ),
              ),
            ),
            ClipPath(
              clipBehavior: Clip.antiAlias,
              clipper: MyClipper(),
              child: Container(
                height: 120,
                width: 120,
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height);
    path.quadraticBezierTo(size.width * 0.35, size.height * 0.6,
        size.width * 0.70, size.height * 0.80);
    path.quadraticBezierTo(
        size.width * 0.85, size.height * 0.90, size.width, size.height * 0.8);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
