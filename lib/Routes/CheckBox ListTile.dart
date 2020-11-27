import 'package:flutter/material.dart';

class MyCheckBoxListTileWidget extends StatefulWidget {
  @override
  _MyCheckBoxListTileWidgetState createState() =>
      _MyCheckBoxListTileWidgetState();
}

class _MyCheckBoxListTileWidgetState extends State<MyCheckBoxListTileWidget> {
  bool _appleChecked = false;
  bool _mangoChecked = false;
  bool _bananaChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Checkbox List Tile'),
        ),
        body: Column(
          children: [
            CheckboxListTile(
              title: Text('Apple'),
              secondary: Icon(Icons.beach_access),
              activeColor: Colors.green,
              checkColor: Colors.white,
              controlAffinity: ListTileControlAffinity.leading,
              value: _appleChecked,
              onChanged: (value) {
                setState(() {
                  _appleChecked = value;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Mango'),
              secondary: Icon(Icons.beach_access),
              activeColor: Colors.green,
              checkColor: Colors.white,
              controlAffinity: ListTileControlAffinity.leading,
              value: _mangoChecked,
              onChanged: (value) {
                setState(() {
                  _mangoChecked = value;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Banana'),
              secondary: Icon(Icons.beach_access),
              activeColor: Colors.green,
              checkColor: Colors.white,
              controlAffinity: ListTileControlAffinity.leading,
              value: _bananaChecked,
              onChanged: (value) {
                setState(() {
                  _bananaChecked = value;
                });
              },
            ),
            Text('Apple: $_appleChecked'),
            Text('Mango: $_mangoChecked'),
            Text('Banana: $_bananaChecked'),
          ],
        ));
  }
}
