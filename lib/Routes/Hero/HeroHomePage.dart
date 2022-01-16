import 'package:flutter/material.dart';
import 'package:my_flutter_widgets/Routes/Hero/Heroes.dart';

import 'HeroDetailPage.dart';

class HeroHomePage extends StatefulWidget {
  @override
  _HeroHomePageState createState() => _HeroHomePageState();
}

class _HeroHomePageState extends State<HeroHomePage> {
  List<Widget> _superHeroes = [];
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _addHeroes();
    });
    super.initState();
  }

  void _addHeroes() {
    List<Heroes> _heroes = [
      Heroes("assets/avengers/iron_man.webp", "Iron Man",
          "Genius. Billionaire. Playboy. Philanthropist. Tony Stark's confidence is only matched by his high-flying abilities as the hero called Iron Man."),
      Heroes("assets/avengers/captain_america.jpg", "Captain America",
          "Recipient of the Super-Soldier serum, World War II hero Steve Rogers fights for American ideals as one of the world’s mightiest heroes and the leader of the Avengers."),
      Heroes("assets/avengers/thor.jpg", "Thor",
          "The son of Odin uses his mighty abilities as the God of Thunder to protect his home Asgard and planet Earth alike."),
      Heroes("assets/avengers/hulk.jpg", "Hulk",
          "Dr. Bruce Banner lives a life caught between the soft-spoken scientist he’s always been and the uncontrollable green monster powered by his rage."),
      Heroes("assets/avengers/black_widow.webp", "Black Widow",
          "Despite super spy Natasha Romanoff’s checkered past, she’s become one of S.H.I.E.L.D.’s most deadly assassins and a frequent member of the Avengers.")
    ];

    Future future = Future(() {});
    _heroes.forEach((hero) {
      future = future.then((value) {
        return Future.delayed(Duration(milliseconds: 100), () {
          _superHeroes.add(buildListTile(hero));
          _listKey.currentState.insertItem(_superHeroes.length - 1);
        });
      });
    });
  }

  Widget buildListTile(Heroes hero) {
    return ListTile(
      leading:
          Hero(tag: hero.title, child: ClipOval(child: Image.asset(hero.img))),
      title: Text(hero.title),
      contentPadding: EdgeInsets.all(10),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => HeroDetailPage(
                  heroes: hero,
                )));
      },
    );
  }

  Tween<Offset> _offset = Tween(begin: Offset(1, 0), end: Offset(0, 0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Hero Home Page')),
        body: AnimatedList(
          key: _listKey,
          itemBuilder: (context, index, animation) {
            return SlideTransition(
              position: animation.drive(_offset),
              child: _superHeroes[index],
            );
          },
          initialItemCount: _superHeroes.length,
        ));
  }
}
