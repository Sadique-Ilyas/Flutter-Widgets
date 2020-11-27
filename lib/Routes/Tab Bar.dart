import 'package:flutter/material.dart';

class MyTabBarWidget extends StatefulWidget {
  @override
  _MyTabBarWidgetState createState() => _MyTabBarWidgetState();
}

class _MyTabBarWidgetState extends State<MyTabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab Bar'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'TV', icon: Icon(Icons.tv)),
                Tab(
                  text: 'Mobile',
                  icon: Icon(Icons.mobile_friendly),
                ),
                Tab(
                    text: 'Laptop',
                    icon: Icon(
                      Icons.laptop,
                    )),
              ],
              labelColor: Colors.greenAccent,
              indicatorColor: Colors.greenAccent,
              unselectedLabelColor: Colors.white,
            ),
          ),
          body: TabBarView(
            children: [
              LayoutBuilder(
                builder: (context, constraints) {
                  return Icon(
                    Icons.tv,
                    size: constraints.biggest.width,
                  );
                },
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  return Icon(
                    Icons.mobile_friendly,
                    size: constraints.biggest.width,
                  );
                },
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  return Icon(
                    Icons.laptop,
                    size: constraints.biggest.width,
                  );
                },
              ),
            ],
          ),
        ));
  }
}
