import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vector_math/vector_math.dart' show radians;

class floating_action_button_radial_menu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return floating_action_button_radial_menu_state();
  }
}

class floating_action_button_radial_menu_state
    extends State<floating_action_button_radial_menu>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(duration: Duration(milliseconds: 900), vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAB Radial Menu'),
        centerTitle: true,
      ),
      body: SizedBox.expand(child: RadialAnimation(controller: controller)),
    );
  }
}

class RadialAnimation extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> scale;
  final Animation<double> translation;
  final Animation<double> rotation;

  RadialAnimation({Key key, this.controller})
      : scale = Tween<double>(
          begin: 1.5,
          end: 0.0,
        ).animate(
            CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn)),
        translation = Tween<double>(
          begin: 0.0,
          end: 100.0,
        ).animate(
            CurvedAnimation(parent: controller, curve: Curves.elasticOut)),
        rotation = Tween<double>(
          begin: 0.0,
          end: 360.0,
        ).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 0.7, curve: Curves.decelerate))),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, builder) {
        return Transform.rotate(
          angle: radians(rotation.value),
          child: Stack(
            alignment: Alignment.center,
            children: [
              _buildButton(0,
                  color: Colors.red, icon: FontAwesomeIcons.thumbtack),
              _buildButton(45,
                  color: Colors.green, icon: FontAwesomeIcons.laptop),
              _buildButton(90,
                  color: Colors.orange, icon: FontAwesomeIcons.adversal),
              _buildButton(135,
                  color: Colors.blue, icon: FontAwesomeIcons.android),
              _buildButton(180,
                  color: Colors.purpleAccent,
                  icon: FontAwesomeIcons.binoculars),
              _buildButton(225,
                  color: Colors.pink, icon: FontAwesomeIcons.buromobelexperte),
              _buildButton(270,
                  color: Colors.yellow, icon: FontAwesomeIcons.filePdf),
              _buildButton(315,
                  color: Colors.tealAccent,
                  icon: FontAwesomeIcons.youtubeSquare),
              Transform.scale(
                scale: scale.value - 1,
                child: FloatingActionButton(
                  child: Icon(FontAwesomeIcons.timesCircle),
                  onPressed: _close,
                  backgroundColor: Colors.red,
                  heroTag: null,
                ),
              ),
              Transform.scale(
                scale: scale.value,
                child: FloatingActionButton(
                  child: Icon(FontAwesomeIcons.solidDotCircle),
                  onPressed: _open,
                  heroTag: null,
                ),
              )
            ],
          ),
        );
      },
    );
  }

  _buildButton(double angle, {Color color, IconData icon}) {
    final double rad = radians(angle);
    return Transform(
      transform: Matrix4.identity()
        ..translate(
          (translation.value) * cos(rad),
          (translation.value) * sin(rad),
        ),
      child: FloatingActionButton(
        child: Icon(icon),
        heroTag: null,
        backgroundColor: color,
        onPressed: () {
          Fluttertoast.showToast(msg: 'Tapped !');
        },
      ),
    );
  }

  _open() {
    controller.forward();
  }

  _close() {
    controller.reverse();
  }
}
