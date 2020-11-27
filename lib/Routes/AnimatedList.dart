import 'package:flutter/material.dart';

class MyAnimatedListWidget extends StatefulWidget {
  @override
  _MyAnimatedListWidgetState createState() => _MyAnimatedListWidgetState();
}

class _MyAnimatedListWidgetState extends State<MyAnimatedListWidget> {
  final GlobalKey<AnimatedListState> _key = GlobalKey();
  List<String> items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated List'),
      ),
      body: AnimatedList(
        key: _key,
        initialItemCount: items.length,
        itemBuilder: (context, index, animation) {
          return _buildItem(items[index], index, animation);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _addItem();
        },
      ),
    );
  }

  Widget _buildItem(String item, int index, Animation animation) {
    return ScaleTransition(
      scale: animation,
      child: Card(
        elevation: 2,
        child: ListTile(
          title: Text(item, style: TextStyle(fontWeight: FontWeight.w400)),
          subtitle: Text('This is Subtitle'),
          leading: CircleAvatar(
            backgroundColor: Colors.amber,
          ),
          trailing: IconButton(
            icon: Icon(Icons.cancel),
            onPressed: () {
              _removeItem(index);
            },
          ),
        ),
      ),
    );
  }

  void _removeItem(int index) {
    String removedItem = items.removeAt(index);
    AnimatedListRemovedItemBuilder builder = (context, animation) {
      return _buildItem(removedItem, index, animation);
    };
    _key.currentState.removeItem(index, builder);
  }

  void _addItem() {
    int index = items.length > 0 ? items.length : 0;
    items.insert(index, 'Item ${items.length + 1}');
    _key.currentState.insertItem(index);
  }
}
