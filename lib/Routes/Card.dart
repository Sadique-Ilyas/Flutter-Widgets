import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CardWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CardWidgetState();
  }
}

class CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: Center(
        child: Container(
          width: 250,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            color: Colors.white,
            elevation: 10.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 50.0,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40.0,
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 30.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 20.0,
                            child: Icon(
                              Icons.star,
                              size: 40.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Captain America',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 20.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //left
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // center vertical
                        children: <Widget>[
                          Icon(Icons.thumb_up_sharp),
                          Text('2M')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //left
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // center vertical
                        children: <Widget>[Icon(Icons.people), Text('7.5M')],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //left
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // center vertical
                        children: <Widget>[Icon(Icons.visibility), Text('12M')],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // center horizontal
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // center vertical
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        Text(
                          "Following",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(Icons.check, color: Colors.white)
                      ],
                    ),
                    color: Colors.lightBlue,
                    onPressed: () {
                      Fluttertoast.showToast(msg: "Following");
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
