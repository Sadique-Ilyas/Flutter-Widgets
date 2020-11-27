import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LayoutBuilderWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LayoutBuilderWidgetState();
  }
}

class LayoutBuilderWidgetState extends State<LayoutBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Widget'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 500) {
              Fluttertoast.showToast(msg: "Landscape Mode");
            } else {
              Fluttertoast.showToast(msg: "Portrait Mode");
            }
            return _myImageBasedOnLayoutBuilder(context);
          },
        ),
      ),
    );
  }

  Widget _myImageBasedOnLayoutBuilder(BuildContext context) {
    Fluttertoast.showToast(
        msg: "" + MediaQuery.of(context).size.width.toString());
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.width,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://media.wired.com/photos/5d09594a62bcb0c9752779d9/1:1/w_1500,h_1500,c_limit/Transpo_G70_TA-518126.jpg"),
                fit: BoxFit.cover)),
      ),
    );
  }
}
