import 'package:flutter/material.dart';

class MyChoice {
  String choice;
  int index;

  MyChoice({this.choice, this.index});
}

class myRadioButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myRadioButtonState();
  }
}

class myRadioButtonState extends State<myRadioButton> {
  String defaultChoice = "Apple";
  int defaultIndex = 0;

  List<MyChoice> choices = [
    MyChoice(index: 0, choice: "Apple"),
    MyChoice(index: 1, choice: "Orange"),
    MyChoice(index: 2, choice: "Mango"),
    MyChoice(index: 3, choice: "Grapes"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Radio Button'),
        ),
        body: Column(
          children: <Widget>[
            Wrap(
              children: <Widget>[
                Container(
                  child: Column(
                    children: choices
                        .map((data) => RadioListTile(
                              title: Text(data.choice),
                              groupValue: defaultIndex,
                              value: data.index,
                              onChanged: (value) {
                                setState(() {
                                  defaultChoice = data.choice;
                                  defaultIndex = data.index;
                                });
                              },
                            ))
                        .toList(),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(14.0),
              child: Text(
                '$defaultChoice',
                style: TextStyle(fontSize: 23.0),
              ),
            )
          ],
        ));
  }
}
