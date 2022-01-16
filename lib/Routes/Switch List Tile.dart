import 'package:flutter/material.dart';

class MySwitchListTile extends StatefulWidget {
  @override
  _MySwitchListTileState createState() => _MySwitchListTileState();
}

class _MySwitchListTileState extends State<MySwitchListTile> {

  bool _carSwitch = false;
  bool _busSwitch = false;
  bool _aeroplaneSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch List Tile'),
      ),
      body: Column(
        children: [
          SwitchListTile(
              title: Text('Car'),
              secondary: Icon(Icons.car_rental),
              value: _carSwitch,
              selected: _carSwitch,
              onChanged: (value) {
                setState(() {
                  this._carSwitch = value;
                });
              }
          ),
          SwitchListTile(
              title: Text('Bus'),
              secondary: Icon(Icons.bus_alert),
              value: _busSwitch,
              selected: _busSwitch,
              onChanged: (value) {
                setState(() {
                  this._busSwitch = value;
                });
              }
          ),
          SwitchListTile(
              title: Text('Aeroplane'),
              secondary: Icon(Icons.airplanemode_active),
              value: _aeroplaneSwitch,
              selected: _aeroplaneSwitch,
              onChanged: (value) {
                setState(() {
                  this._aeroplaneSwitch = value;
                });
              }
          ),
          SizedBox(height: 50,),
          Text('Car: $_carSwitch'),
          Text('Bus: $_busSwitch'),
          Text('Aeroplane: $_aeroplaneSwitch'),
        ],
      )
    );
  }
}
