import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

List<String> getListElements() {
  var items = ['Swipe', 'To', 'Delete', 'any', 'item', 'from', 'the', 'list'];
  return items;
}

var listItems = getListElements();

class DismissibleWidget extends StatefulWidget {
  @override
  _DismissibleWidgetState createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(listItems[index]),
            child: ListTile(
              title: Text(listItems[index]),
              onTap: () {
                Fluttertoast.showToast(msg: listItems[index]);
              },
            ),
            onDismissed: (direction) {
              setState(() {
                String undoItem = listItems[index];
                listItems.removeAt(index);
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('Item Deleted'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      setState(() {
                        listItems.insert(index, undoItem);
                      });
                    },
                  ),
                ));
              });
            },
            background: Container(
              alignment: Alignment.centerLeft,
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ),
            secondaryBackground: Container(
              alignment: Alignment.centerRight,
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
        itemCount: listItems.length,
      ),
    );
  }
}
