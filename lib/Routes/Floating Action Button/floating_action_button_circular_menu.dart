import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'file:///C:/Users/Sadique/AndroidStudioProjects/my_flutter_widgets/lib/Routes/Floating%20Action%20Button/floating_action_button_radial_menu.dart';

class floating_action_button_circular_menu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return floating_action_button_circular_menu_state();
  }
}

class floating_action_button_circular_menu_state
    extends State<floating_action_button_circular_menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAB Circular Menu'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: FabCircularMenu(
          ringDiameter: 500.0,
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                Fluttertoast.showToast(msg: 'Tapped !');
              },
            ),
            IconButton(
              icon: Icon(
                Icons.camera,
                color: Colors.white,
              ),
              onPressed: () {
                Fluttertoast.showToast(msg: 'Tapped !');
              },
            ),
            IconButton(
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            floating_action_button_radial_menu()));
              },
            ),
            IconButton(
              icon: Icon(
                Icons.shop,
                color: Colors.white,
              ),
              onPressed: () {
                Fluttertoast.showToast(msg: 'Tapped !');
              },
            ),
            IconButton(
              icon: Icon(
                Icons.school,
                color: Colors.white,
              ),
              onPressed: () {
                Fluttertoast.showToast(msg: 'Tapped !');
              },
            ),
          ],
        ),
      ),
    );
  }
}
