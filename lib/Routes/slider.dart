import 'package:flutter/material.dart';

class mySlider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return mySliderState();
  }
}

class mySliderState extends State<mySlider> {
  double _fontSize = 20.0;
  var selectedRange = RangeValues(0.2, 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Look Here',
              style: TextStyle(fontSize: _fontSize),
            ),
            Text(
              'Slider',
              style: TextStyle(fontSize: 15),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Slider(
                value: _fontSize,
                min: 10.0,
                max: 100.0,
                divisions: 10,
                activeColor: Colors.yellow,
                inactiveColor: Colors.green,
                label: '$_fontSize',
                onChanged: (double newValue) {
                  setState(() {
                    _fontSize = newValue.roundToDouble();
                  });
                },
              ),
            ),
            Text('Range Slider'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RangeSlider(
                values: selectedRange,
                min: 0.0,
                max: 2.0,
                divisions: 10,
                activeColor: Colors.yellow,
                inactiveColor: Colors.green,
                labels: RangeLabels(
                    '${selectedRange.start}', '${selectedRange.end}'),
                onChanged: (RangeValues newValue) {
                  setState(() {
                    selectedRange = newValue;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
