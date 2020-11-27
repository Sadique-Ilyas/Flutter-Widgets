import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FractionallySizedBoxWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FractionallySizedBoxWidgetState();
  }
}

class FractionallySizedBoxWidgetState
    extends State<FractionallySizedBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fractionally Sized Box'),
      ),
      body: Column(
        children: <Widget>[
          FractionallySizedBox(
            widthFactor: 0.8,
            child: Container(
              color: Colors.amber,
              child: Text(
                '80 % width of screen',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
          ),
          Flexible(
            child: FractionallySizedBox(
                heightFactor: 0.8,
                child: Row(
                  children: <Widget>[
                    VerticalDivider(
                      color: Colors.black,
                    ),
                    Text(
                      '80 % height of screen',
                      style: TextStyle(fontSize: 30.0),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
