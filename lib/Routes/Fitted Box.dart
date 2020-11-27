import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FittedBoxWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FittedBoxWidgetState();
  }
}

class FittedBoxWidgetState extends State<FittedBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fitted Box'),
        ),
        body: FittedBox(
          child: Row(
            children: <Widget>[
              Image.network(
                  "https://media.wired.com/photos/5d09594a62bcb0c9752779d9/1:1/w_1500,h_1500,c_limit/Transpo_G70_TA-518126.jpg"),
              Text(
                'Fitted Box',
                style: TextStyle(fontSize: 80.0),
              )
            ],
          ),
        ));
  }
}
