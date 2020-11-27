import 'package:flutter/material.dart';

class FadeInImageWidget extends StatefulWidget {
  @override
  _FadeInImageWidgetState createState() => _FadeInImageWidgetState();
}

class _FadeInImageWidgetState extends State<FadeInImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fade In Image'),
        ),
        body: FadeInImage.assetNetwork(
            fadeInDuration: Duration(seconds: 3),
            fadeInCurve: Curves.easeIn,
            placeholder: "assets/google.jpg",
            image:
                "https://media.wired.com/photos/5d09594a62bcb0c9752779d9/1:1/w_1500,h_1500,c_limit/Transpo_G70_TA-518126.jpg"));
  }
}
