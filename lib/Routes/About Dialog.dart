import 'package:flutter/material.dart';

class MyAboutDialogWidget extends StatefulWidget {
  @override
  _MyAboutDialogWidgetState createState() => _MyAboutDialogWidgetState();
}

class _MyAboutDialogWidgetState extends State<MyAboutDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Dialog'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Show About Dialog'),
          onPressed: () {
            return showAboutDialog(
              context: context,
              applicationIcon: FlutterLogo(
                style: FlutterLogoStyle.stacked,
                size: 60,
              ),
              applicationName: "My Flutter Widgets",
              applicationVersion: "2.0.1",
              applicationLegalese: 'This is my Application Legalese',
            );
          },
        ),
      ),
    );
  }
}
