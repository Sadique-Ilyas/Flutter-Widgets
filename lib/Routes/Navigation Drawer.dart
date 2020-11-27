import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatefulWidget {
  @override
  _NavigationDrawerWidgetState createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _drawerKey,
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(color: Colors.lightBlueAccent),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.account_circle,
                        size: 80,
                      ),
                      Text(
                        'Captain America',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'captainAmerica@gmail.com',
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ],
                  )),
              ListTile(
                leading: Icon(Icons.leaderboard),
                title: Text('Leadership'),
              ),
              ListTile(
                leading: Icon(Icons.accessible_forward),
                title: Text('Skills'),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Strength'),
              ),
              ListTile(
                leading: Icon(Icons.accessibility_new_sharp),
                title: Text('Power'),
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text('Team Work'),
              ),
            ],
          ),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.white,
                elevation: 10.0,
                child: Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: () {
                              _drawerKey.currentState.openDrawer();
                            }),
                        Text('Search Emails'),
                        IconButton(
                            icon: Icon(
                              Icons.account_circle,
                              size: 30,
                            ),
                            onPressed: () {})
                      ],
                    )),
              ),
            ],
          ),
        )));
  }
}
