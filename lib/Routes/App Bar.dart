import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

List<String> choices = ["Themes", "Sign Out", "Settings"];

class AppBarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppBarState();
  }
}

class AppBarState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
        leading: Icon(Icons.menu),
        backgroundColor: Colors.lightGreen,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              splashColor: Colors.grey,
              onPressed: () {
                Fluttertoast.showToast(msg: "Add");
              }),
          IconButton(
              icon: Icon(Icons.delete),
              splashColor: Colors.grey,
              onPressed: () {
                Fluttertoast.showToast(msg: "Delete");
              }),
          PopupMenuButton<String>(
            onSelected: selected,
            itemBuilder: (BuildContext context) {
              return choices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          )
        ],
      ),
    );
  }

  void selected(String item) {
    Fluttertoast.showToast(
        msg: item, backgroundColor: Colors.green, textColor: Colors.white);
  }
}
