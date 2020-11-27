import 'package:flutter/material.dart';

class TransformWidget extends StatefulWidget {
  @override
  _TransformWidgetState createState() => _TransformWidgetState();
}

class _TransformWidgetState extends State<TransformWidget> {
  double angle = 0;
  double scale = 0.5;
  double x = 0;
  double y = 0;
  double skewX = 0;
  double skewY = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Transform'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Transform.rotate(
                angle: angle,
                child: Transform.scale(
                    scale: scale,
                    child: Transform.translate(
                        offset: Offset(x, y),
                        child: Transform(
                          transform: Matrix4.skew(skewX, skewY),
                          child: Container(
                            width: 200,
                            height: 200,
                            color: Colors.red,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'UP',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 35),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'LEFT',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 35),
                                    ),
                                    Text(
                                      'RIGHT',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 35),
                                    ),
                                  ],
                                ),
                                Text(
                                  'DOWN',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 35),
                                ),
                              ],
                            ),
                          ),
                        ))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                      child: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          scale = scale + 0.1;
                        });
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                        child: Text(('Rotate')),
                        onPressed: () {
                          setState(() {
                            angle = angle + 45;
                          });
                        }),
                  ),
                  RaisedButton(
                      child: Icon(Icons.remove),
                      onPressed: () {
                        setState(() {
                          scale = scale - 0.1;
                        });
                      }),
                ],
              ),
              RaisedButton(
                  child: Icon(Icons.arrow_drop_up_outlined),
                  onPressed: () {
                    setState(() {
                      y = y - 5;
                    });
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                      child: Icon(Icons.arrow_left_outlined),
                      onPressed: () {
                        setState(() {
                          x = x - 5;
                        });
                      }),
                  SizedBox(
                    width: 15,
                  ),
                  RaisedButton(
                      child: Icon(Icons.arrow_right),
                      onPressed: () {
                        setState(() {
                          x = x + 5;
                        });
                      }),
                ],
              ),
              RaisedButton(
                  child: Icon(Icons.arrow_drop_down),
                  onPressed: () {
                    setState(() {
                      y = y + 5;
                    });
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                      child: Text('Skew X+'),
                      onPressed: () {
                        setState(() {
                          skewX = skewX + 0.1;
                        });
                      }),
                  SizedBox(
                    width: 20,
                  ),
                  RaisedButton(
                      child: Text('Skew Y+'),
                      onPressed: () {
                        setState(() {
                          skewY = skewY + 0.1;
                        });
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                      child: Text('Skew X-'),
                      onPressed: () {
                        setState(() {
                          skewX = skewX - 0.1;
                        });
                      }),
                  SizedBox(
                    width: 20,
                  ),
                  RaisedButton(
                      child: Text('Skew Y-'),
                      onPressed: () {
                        setState(() {
                          skewY = skewY - 0.1;
                        });
                      }),
                ],
              )
            ],
          ),
        ));
  }
}
