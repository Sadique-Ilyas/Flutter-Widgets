import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatefulWidget {
  @override
  _SliverAppBarWidgetState createState() => _SliverAppBarWidgetState();
}

class _SliverAppBarWidgetState extends State<SliverAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Landscapes'),
            stretch: true,
            backgroundColor: Colors.green,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/landscapes.jpg",
                fit: BoxFit.fill,
              ),
              stretchModes: <StretchMode>[StretchMode.zoomBackground],
            ),
            floating: false,
            pinned: false,
          ),
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
            ListTile(
              title: Text("Neckertal pasture hillside, Switzerland.",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              subtitle: Text(
                "The concept of 'cultural landscapes' can be found in the European"
                " tradition of landscape painting.[2] From the 16th century"
                " onwards, many European artists painted landscapes in favor"
                " of people, diminishing the people in their paintings to figures "
                "subsumed within broader, regionally specific landscapes.The "
                "concept of 'cultural landscapes' can be found in the European "
                "tradition of landscape painting.[2] From the 16th century onwards,"
                " many European artists painted landscapes in favor of people,"
                " diminishing the people in their paintings to figures subsumed "
                "within broader, regionally specific landscapes.The concept of "
                "'cultural landscapes' can be found in the European tradition of "
                "landscape painting.[2] From the 16th century onwards, many "
                "European artists painted landscapes in favor of people, diminishing "
                "the people in their paintings to figures subsumed within broader,"
                " regionally specific landscapes.The concept of 'cultural landscapes'"
                " can be found in the European tradition of landscape painting.[2] "
                "From the 16th century onwards, many European artists painted landscapes"
                " in favor of people, diminishing the people in their paintings to figures"
                " subsumed within broader, regionally specific landscapes.The concept"
                " of 'cultural landscapes' can be found in the European tradition of"
                " landscape painting.[2] From the 16th century onwards, many European"
                " artists painted landscapes in favor of people, diminishing the people"
                " in their paintings to figures subsumed within broader, regionally"
                " specific landscapes.The concept of 'cultural landscapes' can be"
                " found in the European tradition of landscape painting.[2] "
                "From the 16th century onwards, many European artists painted "
                "landscapes in favor of people, diminishing the people in their"
                " paintings to figures subsumed within broader, regionally specific"
                " landscapes.The concept of 'cultural landscapes' can be found in "
                "the European tradition of landscape painting.[2] From the 16th "
                "century onwards, many European artists painted landscapes in favor"
                " of people, diminishing the people in their paintings to figures "
                "subsumed within broader, regionally specific landscapes.The concept"
                " of 'cultural landscapes' can be found in the European tradition "
                "of landscape painting.[2] From the 16th century onwards, many "
                "European artists painted landscapes in favor of people, diminishing"
                " the people in their paintings to figures subsumed within broader,"
                " regionally specific landscapes.The concept of 'cultural landscapes'"
                " can be found in the European tradition of landscape painting.[2]"
                " From the 16th century onwards, many European artists painted landscapes"
                " in favor of people, diminishing the people in their paintings to figures"
                " subsumed within broader, regionally specific landscapes.The concept of "
                "'cultural landscapes' can be found in the European tradition of landscape "
                "painting.[2] From the 16th century onwards, many European artists painted "
                "landscapes in favor of people, diminishing the people in their paintings "
                "to figures subsumed within broader, regionally specific landscapes."
                "The concept of 'cultural landscapes' can be found in the European tradition "
                "of landscape painting.[2] From the 16th century onwards, many European "
                "artists painted landscapes in favor of people, diminishing the people"
                " in their paintings to figures subsumed within broader, regionally specific"
                " landscapes.The concept of 'cultural landscapes' can be found in the "
                "European tradition of landscape painting.[2] From the 16th century onwards,"
                " many European artists painted landscapes in favor of people, diminishing"
                " the people in their paintings to figures subsumed within broader,"
                " regionally specific landscapes.The concept of 'cultural landscapes' can"
                " be found in the European tradition of landscape painting.[2] From the "
                "16th century onwards, many European artists painted landscapes in favor "
                "of people, diminishing the people in their paintings to figures subsumed"
                " within broader, regionally specific landscapes.The concept of 'cultural"
                " landscapes' can be found in the European tradition of landscape painting."
                "[2] From the 16th century onwards, many European artists painted landscapes"
                " in favor of people, diminishing the people in their paintings to figures "
                "subsumed within broader, regionally specific landscapes.",
                style: TextStyle(color: Colors.black),
              ),
            )
          ])),
          SliverGrid.count(
              crossAxisCount: 2,
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
                    fit: BoxFit.cover,
                  ),
                );
              }).toList())
        ],
      ),
    );
  }
}
