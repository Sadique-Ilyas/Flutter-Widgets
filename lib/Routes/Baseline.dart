import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaselineWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BaselineWidgetState();
  }
}

class BaselineWidgetState extends State<BaselineWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baseline'),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
          child: Baseline(
            child: Center(
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.green),
                width: 60.0,
                height: 60.0,
                child: Icon(Icons.star),
              ),
            ),
            baseline: 10.0,
            baselineType: TextBaseline.alphabetic,
          ),
        ),
      ),
    );
  }
}
