import 'package:flutter/material.dart';

class HeroDetailPage extends StatefulWidget {
  @override
  _HeroDetailPageState createState() => _HeroDetailPageState();
}

class _HeroDetailPageState extends State<HeroDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hero Detailed Page'),
        ),
        body: Hero(
            tag: 'myTag',
            child: Column(
              children: <Widget>[
                Image(image: AssetImage("assets/landscapes.jpg")),
              ],
            )));
  }
}
