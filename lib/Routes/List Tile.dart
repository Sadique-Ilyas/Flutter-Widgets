import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListTileWidgetState();
  }
}

class ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Tile'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text('Simple List Tile'),
            ),
          ),
          Card(
            child: ListTile(
                leading: Icon(
                  Icons.star,
                  color: Colors.blue,
                ),
                title: Text('Simple List Tile with leading icon')),
          ),
          Card(
            child: ListTile(
                trailing: Icon(Icons.wb_sunny_sharp, color: Colors.blue),
                title: Text('Simple List Tile with trailing icon')),
          ),
          Card(
            child: ListTile(
                leading: Icon(
                  Icons.star,
                  color: Colors.blue,
                ),
                trailing: Icon(Icons.wb_sunny_sharp, color: Colors.blue),
                title: Text('Simple List Tile with leading & trailing icon')),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.star,
                color: Colors.blue,
              ),
              trailing: Icon(Icons.wb_sunny_sharp, color: Colors.blue),
              title: Text('Title'),
              subtitle: Text('Sub Title\nisThreeLine: true,'),
              isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.star,
                color: Colors.blue,
              ),
              trailing: Icon(Icons.wb_sunny_sharp, color: Colors.blue),
              title: Text('Title'),
              subtitle: Text(
                  'Sub Title\ndense: true\t| smaller and denser\nisThreeLine: true | three line'),
              dense: true,
              isThreeLine: true,
            ),
          ),
        ],
      ),
    );
  }
}
