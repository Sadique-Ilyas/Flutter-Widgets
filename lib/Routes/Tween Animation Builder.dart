import 'package:flutter/material.dart';

class MyTweenAnimationBuilderWidget extends StatefulWidget {
  @override
  _MyTweenAnimationBuilderWidgetState createState() =>
      _MyTweenAnimationBuilderWidgetState();
}

class _MyTweenAnimationBuilderWidgetState
    extends State<MyTweenAnimationBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tween Animation Builder'),
      ),
      // body: Center(
      //   child: TweenAnimationBuilder<Color>(
      //     duration: Duration(seconds: 3),
      //     tween: ColorTween(begin: Colors.white, end: Colors.green),
      //     child: Image.asset("assets/A.gif"),
      //     builder: (BuildContext context, Color value, Widget child) {
      //       return ColorFiltered(
      //         colorFilter: ColorFilter.mode(Colors.greenAccent, BlendMode.modulate),
      //         child: child
      //       );
      //     },
      //   ),
      // ),
    );
  }
}
