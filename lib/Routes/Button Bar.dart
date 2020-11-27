import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonBarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ButtonBarWidgetState();
  }
}

class ButtonBarWidgetState extends State<ButtonBarWidget> {
  bool isShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Bar'),
      ),
      body: Center(
        child: ButtonBar(
          alignment: MainAxisAlignment.center,
          buttonHeight: 70.0,
          buttonMinWidth: 100.0,
          buttonTextTheme: ButtonTextTheme.accent,
          buttonPadding: EdgeInsets.all(8.0),
          children: <Widget>[
            RaisedButton(
              child: Text(isShow == true ? 'Disabled' : 'Click !'),
              onPressed: isShow == true
                  ? null
                  : () {
                      setState(() {
                        isShow = true;
                      });
                    },
              textColor: Colors.green,
              disabledTextColor: Colors.red,
            ),
            RaisedButton(
              child: Text(isShow == false ? 'Disabled' : 'Click !'),
              onPressed: isShow == false
                  ? null
                  : () {
                      setState(() {
                        isShow = false;
                      });
                    },
              textColor: Colors.green,
              disabledTextColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
