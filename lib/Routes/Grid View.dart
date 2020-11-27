import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GridViewWidgetState();
  }
}

class GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
      ),
      body: Container(
          child: GridView.count(
              crossAxisCount: 3,
              childAspectRatio: 1.0,
              padding: const EdgeInsets.all(4.0),
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
              children: <String>[
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
                'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
                //Random Picture
              ].map((url) {
                return GridTile(
                  child: Image.network(
                    url,
                    loadingBuilder: (context, child, progress) {
                      return progress == null ? child : Icon(Icons.image);
                    },
                    fit: BoxFit.cover,
                  ),
                );
              }).toList())),
    );
  }
}
