import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DividerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DividerWidgetState();
  }
}

class DividerWidgetState extends State<DividerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Divider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              VerticalDivider(),
              Container(
                color: Colors.purple,
                width: 50,
                height: 50,
              )
            ],
          ),
          Divider(
            height: 20,
            thickness: 5,
            color: Colors.blueGrey,
            indent: 150,
            endIndent: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blue,
                width: 50,
                height: 50,
              ),
              VerticalDivider(),
              Container(
                color: Colors.green,
                width: 50,
                height: 50,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text('Vertical Divider implementation will be available'
                ' in the default channel very soon, but for now you '
                'have to switch to the dev channel to use it:'),
          ),
          Text(
            ' flutter channel dev',
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
