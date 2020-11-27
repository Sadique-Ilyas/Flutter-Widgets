import 'package:flutter/material.dart';

class MyListWheelScrollViewWidget extends StatefulWidget {
  @override
  _MyListWheelScrollViewWidgetState createState() =>
      _MyListWheelScrollViewWidgetState();
}

class _MyListWheelScrollViewWidgetState
    extends State<MyListWheelScrollViewWidget> {
  int i = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List Wheel Scroll View'),
        ),
        body: ListWheelScrollView(
          controller: FixedExtentScrollController(),
          physics: const FixedExtentScrollPhysics(),
          itemExtent: 110,
          useMagnifier: true,
          magnification: 1.5,
          children: [
            'App Bar',
            'Baseline',
            'Bottom Sheet (Modal)',
            'Bottom Sheet (Persistent)',
            'Button Bar',
            'Card',
            'Column and Row',
            'Constrained Box',
            'Container',
            'Custom Multi Child Layout [Incomplete]',
            'Divider [Incomplete]',
            'Expanded',
            'Expansion Panel',
            'Fitted Box',
            'Flow',
            'Fractionally Sized Box',
            'Grid View',
            'Indexed Stack',
            'Stack',
            'Intrinsic Height',
            'Intrinsic Width',
            'Layout Builder',
            'Limited Box',
            'List Body',
            'List Tile',
            'Navigation Drawer',
            'Page View',
            'Wrap',
            'Animated Container',
            'Opacity',
            'Future Builder [Incomplete]',
            'Fade Transition [Incomplete]',
            'Sliver App Bar',
            'FadeIn Image',
            'Stream Builder [Incomplete]',
            'Inherited Model [Incomplete]',
            'ClipRRect',
            'Hero',
            'Custom Paint',
            'ToolTip',
            'Absorb Pointer',
            'Transform',
            'BackDropFilter [Incomplete]',
            'Align',
            'Positioned',
            'Animated Builder',
            'Dismissible',
            'Sized Box',
            'Value Listenable Builder',
            'Checkbox',
            'Circular Progress Indicator',
            'Date Time Picker',
            'Data Table',
            'Drop Down Button',
            'Flat Button',
            'Floating Action Button',
            'Form',
            'Icon Button',
            'Image',
            'Linear Progress Indicator',
            'Popup Menu Button',
            'Radio Button',
            'Raised Button',
            'Refresh Indicator',
            'Rich Text',
            'Slider',
            'Switch',
            'Text Field',
            'Draggable',
            'Animated List',
            'Flexible',
            'Media Query [Incomplete]',
            'Spacer',
            'Inherited Widget [Incomplete]',
            'Animated Icon',
            'Aspect Ratio',
            'PlaceHolder',
            'Reorderable ListView',
            'Animated Switcher',
            'Animated Positioned',
            'Animated Padding',
            'Semantics',
            'Animated Opacity',
            'Selectable Text',
            'Alert Dialog',
            'Animated Cross Fade',
            'Draggable Scrollable Sheet',
            'Color Filtered',
            'Toggle Buttons',
            'Cupertino Action Sheet',
            'Tween Animation Builder',
            'Tab Bar',
            'SnackBar',
            'List Wheel Scroll View'
          ]
              .map(
                (letter) => Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(26)),
                  ),
                  height: 90,
                  child: Center(
                    child: Text(
                      letter,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
              .toList(),
        ));
  }

  myText() {
    List<String> myList = List.generate(100, (index) => "Item $index");
    return Center(
      child: Text(
        myList[i++],
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
    );
  }
}
