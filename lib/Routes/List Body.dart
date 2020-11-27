import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListBodyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListBodyWidgetState();
  }
}

class ListBodyWidgetState extends State<ListBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Body'),
      ),
      body: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          ListBody(
            mainAxis: Axis.vertical,
            children: <Widget>[
              for (var i = 0; i < 5; i++)
                Container(
                  height: 100,
                  child: Card(
                    margin: EdgeInsets.all(16.0),
                    child: Center(child: Text('Item ${i + 1}')),
                  ),
                )
            ],
          )
        ],
      ),
    );
  }
}
