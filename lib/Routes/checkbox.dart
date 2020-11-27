import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myCheckBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myCheckBoxState();
  }
}

class myCheckBoxState extends State<myCheckBox> {
  bool orangeVal = false;
  bool lemonVal = false;
  bool appleVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Box'),
        centerTitle: true,
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
                    Text('Orange'),
                    Checkbox(
                      value: orangeVal,
                      onChanged: (bool value) {
                        setState(() {
                          orangeVal = value;
                        });
                      },
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Lemon'),
                    Checkbox(
                      value: lemonVal,
                      onChanged: (bool value) {
                        setState(() {
                          lemonVal = value;
                        });
                      },
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Apple'),
                    Checkbox(
                      value: appleVal,
                      onChanged: (bool value) {
                        setState(() {
                          appleVal = value;
                        });
                      },
                    )
                  ],
                ),
              ],
            ),
            Text("Orange: $orangeVal\nLemon: $lemonVal\nApple: $appleVal")
          ],
        ),
      ),
    );
  }
}
