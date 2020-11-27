import 'package:flutter/material.dart';

import 'file:///C:/Users/Sadique/AndroidStudioProjects/flutter_layout_widgets/lib/Routes/PageViewWidget/Page1.dart';
import 'file:///C:/Users/Sadique/AndroidStudioProjects/flutter_layout_widgets/lib/Routes/PageViewWidget/Page2.dart';

import 'Page3.dart';

class PageViewWidget extends StatefulWidget {
  @override
  _PageViewWidgetState createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page View'),
      ),
      body: PageView(
        controller: controller,
        children: [Page1(), Page2(), Page3()],
      ),
    );
  }
}
