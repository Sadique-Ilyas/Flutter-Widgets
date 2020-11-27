import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ExpansionPanelWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ExpansionPanelWidgetState();
  }
}

class ExpansionPanelWidgetState extends State<ExpansionPanelWidget> {
  bool active = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Panel'),
      ),
      body: _expansionPanel(),
    );
  }

  _expansionPanel() {
    return ListView(
      children: <Widget>[
        ExpansionPanelList(
          expansionCallback: (index, expanded) {
            Fluttertoast.showToast(msg: '$index');
            setState(() {
              active = !active;
            });
          },
          children: <ExpansionPanel>[
            ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text('Header of Item'),
                  );
                },
                body: ListTile(
                  title: Text('Body of item'),
                  subtitle: Text('Sub title of item'),
                  trailing: Icon(Icons.favorite),
                  onTap: () {
                    Fluttertoast.showToast(msg: "Clicked !");
                  },
                ),
                isExpanded: active)
          ],
        )
      ],
    );
  }
}
