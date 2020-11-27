import 'package:flutter/material.dart';

class myCircularProgressIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myCircularProgressIndicatorState();
  }
}

class myCircularProgressIndicatorState
    extends State<myCircularProgressIndicator> {
  bool isShowing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circular Progress Indicator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Circular Progress Indicator'),
                    Checkbox(
                      value: isShowing,
                      onChanged: (bool value) {
                        setState(() {
                          isShowing = value;
                        });
                      },
                    )
                  ],
                )
              ],
            ),
            isShowing == true ? CircularProgressIndicator() : Container()
          ],
        ),
      ),
    );
  }
}
