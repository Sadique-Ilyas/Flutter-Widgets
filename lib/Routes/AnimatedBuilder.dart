import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedBuilderWidget extends StatefulWidget {
  @override
  _AnimatedBuilderWidgetState createState() => _AnimatedBuilderWidgetState();
}

class _AnimatedBuilderWidgetState extends State<AnimatedBuilderWidget>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        duration: const Duration(
          seconds: 10,
        ),
        vsync: this)
      ..repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  // final animation = Tween(begin: 0, end: 2 * pi).animate(controller);

  @override
  Widget build(BuildContext context) {
    print("build method called");
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Builder'),
      ),
      body: AnimatedBuilder(
          animation: controller,
          child: Center(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: AnimatedBuilder(
                  animation: controller,
                  child: Center(
                    child: Container(
                      width: 180,
                      height: 180,
                      color: Colors.green,
                      child: AnimatedBuilder(
                          animation: controller,
                          child: Center(
                            child: Container(
                              width: 160,
                              height: 160,
                              color: Colors.blue,
                              child: AnimatedBuilder(
                                  animation: controller,
                                  child: Center(
                                    child: Container(
                                      width: 140,
                                      height: 140,
                                      color: Colors.yellow,
                                      child: AnimatedBuilder(
                                          animation: controller,
                                          child: Center(
                                            child: Container(
                                              width: 120,
                                              height: 120,
                                              color: Colors.pink,
                                              child: AnimatedBuilder(
                                                  animation: controller,
                                                  child: Center(
                                                    child: Container(
                                                      width: 100,
                                                      height: 100,
                                                      color: Colors.purple,
                                                    ),
                                                  ),
                                                  builder: (context, child) =>
                                                      Transform.rotate(
                                                        angle:
                                                            controller.value *
                                                                2.0 *
                                                                pi,
                                                        child: child,
                                                      )),
                                            ),
                                          ),
                                          builder: (context, child) =>
                                              Transform.rotate(
                                                angle:
                                                    controller.value * 2.0 * pi,
                                                child: child,
                                              )),
                                    ),
                                  ),
                                  builder: (context, child) => Transform.rotate(
                                        angle: controller.value * 2.0 * pi,
                                        child: child,
                                      )),
                            ),
                          ),
                          builder: (context, child) => Transform.rotate(
                                angle: controller.value * 2.0 * pi,
                                child: child,
                              )),
                    ),
                  ),
                  builder: (context, child) => Transform.rotate(
                        angle: controller.value * 2.0 * pi,
                        child: child,
                      )),
            ),
          ),
          builder: (context, child) => Transform.rotate(
                angle: controller.value * 2.0 * pi,
                child: child,
              )),
    );
  }
}
