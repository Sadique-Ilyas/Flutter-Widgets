import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class mySwitch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return mySwitchState();
  }
}

class mySwitchState extends State<mySwitch> {
  bool _isSwitch = false;
  String _buttonState = "Button Disable";

  void _myButtonFunc() {
    Fluttertoast.showToast(msg: "Clicked !");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Switch(
                value: _isSwitch,
                activeColor: Colors.blue,
                activeTrackColor: Colors.green,
                onChanged: (newValue) {
                  setState(() {
                    _isSwitch = newValue;
                    if (_isSwitch) {
                      _buttonState = "Button Enable";
                    } else {
                      _buttonState = "Button Disable";
                    }
                  });
                }),
            RaisedButton(
              color: Colors.orange,
              disabledColor: Colors.red,
              disabledTextColor: Colors.white,
              textColor: _isSwitch ? Colors.white : Colors.black87,
              child: Text('$_buttonState'),
              onPressed: _isSwitch
                  ? () {
                      _myButtonFunc();
                    }
                  : null,
            )
          ],
        ),
      ),
    );
  }
}
