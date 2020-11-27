import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndexedStackWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IndexedStackWidgetState();
  }
}

class IndexedStackWidgetState extends State<IndexedStackWidget> {
  int i = 0;

  final widget_list = [
    Container(
      color: Colors.red,
      child: Center(
        child: Text(
          'Page 1',
          style: TextStyle(fontSize: 30.0, color: Colors.white),
        ),
      ),
    ),
    Container(
      color: Colors.green,
      child: Center(
        child: Text(
          'Page 2',
          style: TextStyle(fontSize: 30.0, color: Colors.white),
        ),
      ),
    ),
    Container(
      color: Colors.orange,
      child: Center(
        child: Text(
          'Page 3',
          style: TextStyle(fontSize: 30.0, color: Colors.white),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Indexed Stack'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: IndexedStack(
            index: i,
            children: widget_list,
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    setState(() {
                      if (i > 0) {
                        i--;
                      } else {
                        i = widget_list.length - 1;
                      }
                    });
                  }),
              IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    setState(() {
                      if (i < widget_list.length - 1) {
                        i++;
                      } else {
                        i = 0;
                      }
                    });
                  }),
            ],
          )
        ],
      ),
    );
  }
}
