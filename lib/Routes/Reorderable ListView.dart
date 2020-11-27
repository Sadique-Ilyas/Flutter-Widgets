import 'package:flutter/material.dart';

class MyReorderableListViewWidget extends StatefulWidget {
  @override
  _MyReorderableListViewWidgetState createState() =>
      _MyReorderableListViewWidgetState();
}

class _MyReorderableListViewWidgetState
    extends State<MyReorderableListViewWidget> {
  List<String> items = [
    'Z',
    'P',
    'W',
    'B',
    'S',
    'N',
    'O',
    'D',
    'L',
    'C',
    'V',
    'G',
    'Q',
    'A',
    'X',
    'J',
    'F',
    'H',
    'R',
    'T',
    'E',
    'K',
    'Y',
    'I',
    'U',
    'M',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reorderable ListView'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                setState(() {
                  items.shuffle();
                });
              })
        ],
      ),
      body: ReorderableListView(
        children: <Widget>[
          for (final item in items)
            Card(
              key: ValueKey(item),
              elevation: 2,
              child: ListTile(
                title: CircleAvatar(
                  child: Text(item),
                ),
              ),
            )
        ],
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (newIndex > oldIndex) newIndex -= 1;
            final item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          });
        },
      ),
    );
  }
}
