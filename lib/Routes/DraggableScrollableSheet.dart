import 'dart:ui';

import 'package:flutter/material.dart';

class MyDraggableScrollableSheetWidget extends StatefulWidget {
  @override
  _MyDraggableScrollableSheetWidgetState createState() =>
      _MyDraggableScrollableSheetWidgetState();
}

class _MyDraggableScrollableSheetWidgetState
    extends State<MyDraggableScrollableSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Draggable Scrollable Sheet'),
        ),
        body: Stack(
          children: [
            DraggableScrollableSheet(
              initialChildSize: 0.2,
              minChildSize: 0.2,
              maxChildSize: 1.0,
              builder: (context, scrollController) {
                return SingleChildScrollView(
                    controller: scrollController,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(50))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Landscapes',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                          Image.asset("assets/landscapes.jpg"),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
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
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                        ],
                      ),
                    ));
              },
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.1,
              minChildSize: 0.1,
              maxChildSize: 1.0,
              builder: (context, scrollController) {
                return SingleChildScrollView(
                    controller: scrollController,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(50))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Garden',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                          Image.asset("assets/landscapes.jpg"),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
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
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                        ],
                      ),
                    ));
              },
            ),
          ],
        ));
  }
}
