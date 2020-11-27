import 'package:flutter/material.dart';

class MyToggleButtonsWidget extends StatefulWidget {
  @override
  _MyToggleButtonsWidgetState createState() => _MyToggleButtonsWidgetState();
}

class _MyToggleButtonsWidgetState extends State<MyToggleButtonsWidget> {
  List<bool> _selections = List.generate(3, (index) => false);

  @override
  Widget build(BuildContext context) {
    print(_selections);
    return Scaffold(
      appBar: AppBar(
        title: Text('Toggle Buttons'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ToggleButtons(
            isSelected: _selections,
            children: [
              Icon(Icons.format_italic),
              Icon(Icons.format_bold),
              Icon(Icons.format_underline),
            ],
            onPressed: (int index) {
              setState(() {
                _selections[index] = !_selections[index];
              });
            },
            color: Colors.blue,
            selectedColor: Colors.white,
            selectedBorderColor: Colors.pinkAccent,
            fillColor: Colors.blue,
            splashColor: Colors.orange,
            borderColor: Colors.lightBlueAccent,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderWidth: 10,
            highlightColor: Colors.yellow,
          ),
          Text('Italic: ${_selections[0]}'),
          Text('Bold: ${_selections[1]}'),
          Text('Underlined: ${_selections[2]}'),
        ],
      )),
    );
  }
}
