import 'package:flutter/material.dart';

class myLinearProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Linear Progress Indicator"),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(32.0),
        child: LinearProgressIndicatorDemo(),
      ),
    );
  }
}

class LinearProgressIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LinearProgressIndicatorDemoState();
  }
}

class LinearProgressIndicatorDemoState
    extends State<LinearProgressIndicatorDemo>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
    controller.repeat();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: LinearProgressIndicator(
          value: animation.value,
        ),
      ),
    );
  }
}
