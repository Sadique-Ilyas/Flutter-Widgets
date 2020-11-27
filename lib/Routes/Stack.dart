import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StackWidgetState();
  }
}

class StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/pic12.jpg'), fit: BoxFit.fill)),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Card(
              color: Colors.black,
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0))),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Temperature Max ',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '30°C',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Temperature Min ',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '-10°C',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 150),
            child: Column(
              children: <Widget>[
                Text(
                  'New York',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  'USA',
                  style: TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),
                ),
                Text(
                  '15 °C',
                  style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
