import 'package:flutter/material.dart';

class myImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: Image.network(
        "https://media.wired.com/photos/5d09594a62bcb0c9752779d9/1:1/w_1500,h_1500,c_limit/Transpo_G70_TA-518126.jpg",
        loadingBuilder: (context, child, progress) {
          return progress == null
              ? child
              : Center(child: CircularProgressIndicator());
        },
        height: double.infinity,
        width: double.infinity,
        scale: 10.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
