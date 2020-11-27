import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class myPopUpItem {
  myPopUpItem({this.title, this.icon});

  String title;
  IconData icon;
}

List<myPopUpItem> choices = <myPopUpItem>[
  myPopUpItem(title: "Account", icon: Icons.account_circle),
  myPopUpItem(title: "Phone", icon: Icons.phone),
  myPopUpItem(title: "Email", icon: Icons.email),
  myPopUpItem(title: "Refresh", icon: Icons.refresh)
];

class myPopupMenuButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myPopupMenuButtonState();
  }
}

class myPopupMenuButtonState extends State<myPopupMenuButton> {
  myPopUpItem selected_item = choices[0];

  void _select(myPopUpItem item) {
    setState(() {
      selected_item = item;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pop Up Menu'),
        actions: <Widget>[
          PopupMenuButton<myPopUpItem>(
            elevation: 3.2,
            initialValue: choices[0],
            onCanceled: () {
              Fluttertoast.showToast(msg: "Cancelled");
            },
            tooltip: "Pop Up Menu",
            onSelected: _select,
            itemBuilder: (BuildContext context) {
              return choices.map((myPopUpItem choice) {
                return PopupMenuItem<myPopUpItem>(
                  value: choice,
                  child: Text(choice.title),
                );
              }).toList();
            },
          )
        ],
      ),
      body: buildItem(),
    );
  }

  buildItem() {
    return Container(
      child: SelectedOption(choice: selected_item),
    );
  }
}

class SelectedOption extends StatelessWidget {
  myPopUpItem choice;

  SelectedOption({Key key, this.choice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              choice.icon,
              size: 140.0,
              color: Colors.lightBlueAccent,
            ),
            Text(
              choice.title,
              style: TextStyle(color: Colors.blue, fontSize: 30.0),
            )
          ],
        ),
      ),
    );
  }
}
