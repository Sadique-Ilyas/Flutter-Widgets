import 'package:flutter/material.dart';

class MyAnimatedIcon extends StatefulWidget {
  @override
  _MyAnimatedIconState createState() => _MyAnimatedIconState();
}

class _MyAnimatedIconState extends State<MyAnimatedIcon>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController controller;
  bool mReverse = false;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation = Tween<double>(begin: 0, end: 1).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Icon'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            if (mReverse == false) {
              controller.forward();
            } else {
              controller.reverse();
            }
            mReverse = !mReverse;
          },
          child: AnimatedIcon(
            size: 100,
            progress: animation,
            icon: AnimatedIcons.play_pause,
          ),
        ),
      ),
    );
  }
}
