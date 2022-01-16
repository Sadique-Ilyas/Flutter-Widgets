import 'package:flutter/material.dart';
import 'package:my_flutter_widgets/Routes/Hero/Heroes.dart';

class HeroDetailPage extends StatefulWidget {
  final Heroes heroes;
  HeroDetailPage({@required this.heroes});
  @override
  _HeroDetailPageState createState() => _HeroDetailPageState();
}

class _HeroDetailPageState extends State<HeroDetailPage>
    with TickerProviderStateMixin {
  Heroes heroes;

  AnimationController _controller;
  AnimationController _titleController;
  Animation<Color> _colorAnimation;
  Animation<double> _sizeAnimation;
  Animation<Offset> _titleAnimation;
  bool isFav = false;
  @override
  void initState() {
    heroes = widget.heroes;

    // Animation Controllers
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _titleController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );

    //Color Tween
    _colorAnimation =
        ColorTween(begin: Colors.white, end: Colors.red).animate(_controller);

    //Size Tween
    _sizeAnimation = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 20, end: 30), weight: 50),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 30, end: 20), weight: 50)
    ]).animate(_controller);
    _controller.addListener(() {});

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isFav = true;
        });
      }
      if (status == AnimationStatus.dismissed) {
        setState(() {
          isFav = false;
        });
      }
    });

    // Title Tween
    _titleAnimation =
        Tween<Offset>(begin: Offset(-2.0, 0.0), end: Offset(0.0, 0.0)).animate(
            CurvedAnimation(
                parent: _titleController, curve: Curves.elasticInOut));
    _titleController.forward();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Hero(tag: heroes.title, child: Image.asset(heroes.img)),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Row(
                  children: [
                    SlideTransition(
                      position: _titleAnimation,
                      child: Text(
                        heroes.title,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    AnimatedBuilder(
                      animation: _controller,
                      builder: (BuildContext context, Widget child) {
                        return IconButton(
                          iconSize: _sizeAnimation.value,
                          icon: Icon(
                            Icons.favorite,
                          ),
                          color: _colorAnimation.value,
                          onPressed: () {
                            isFav
                                ? _controller.reverse()
                                : _controller.forward();
                          },
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: Duration(seconds: 1),
                  child: Text(
                    heroes.body,
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  curve: Curves.decelerate,
                  builder: (context, value, child) {
                    return Opacity(
                      opacity: value,
                      child: child,
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
