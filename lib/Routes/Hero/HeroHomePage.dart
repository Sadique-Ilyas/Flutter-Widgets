import 'package:flutter/material.dart';

import 'HeroDetailPage.dart';

class HeroHomePage extends StatefulWidget {
  @override
  _HeroHomePageState createState() => _HeroHomePageState();
}

class _HeroHomePageState extends State<HeroHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Hero Home Page')),
        body: Hero(
            tag: 'myTag',
            child: Center(
                child: GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HeroDetailPage())),
              child: Image(
                image: AssetImage("assets/landscapes.jpg"),
              ),
            ))));
  }
}
