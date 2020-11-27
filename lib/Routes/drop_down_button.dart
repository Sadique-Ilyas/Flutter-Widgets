import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class myDropDownButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myDropDownButtonState();
  }
}

class myDropDownButtonState extends State<myDropDownButton> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop Down Button'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(16.0),
        child: DropdownButton<String>(
          isExpanded: true,
          items: [
            DropdownMenuItem<String>(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.search),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Search')
                ],
              ),
              value: "Search",
            ),
            DropdownMenuItem<String>(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.message),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Message')
                ],
              ),
              value: "Message",
            ),
            DropdownMenuItem<String>(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.laptop),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Laptop')
                ],
              ),
              value: "Laptop",
            )
          ],
          onChanged: (String value) {
            setState(() {
              _value = value;
              Fluttertoast.showToast(msg: value);
            });
          },
          hint: Text('Select Item'),
          value: _value,
        ),
      ),
    );
  }
}
