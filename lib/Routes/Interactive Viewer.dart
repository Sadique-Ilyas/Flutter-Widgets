import 'package:flutter/material.dart';

class MyInteractiveViewer extends StatefulWidget {
  @override
  _MyInteractiveViewerState createState() => _MyInteractiveViewerState();
}

class _MyInteractiveViewerState extends State<MyInteractiveViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Interactive Viewer'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InteractiveViewer(
              child: Image.asset("assets/landscapes.jpg"),
              constrained: true,
              panEnabled: true,
              scaleEnabled: true,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'Zoom In, Zoom Out, Pan the image using Interactive Viewer',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ));
  }
}
