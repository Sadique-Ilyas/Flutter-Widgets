import 'package:flutter/material.dart';

class MyShaderMaskWidget extends StatefulWidget {
  @override
  _MyShaderMaskWidgetState createState() => _MyShaderMaskWidgetState();
}

class _MyShaderMaskWidgetState extends State<MyShaderMaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Shader Mask'),
        ),
        body: Column(
          children: [
            ShaderMask(
              shaderCallback: (rect) => LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      colors: [Colors.purple, Colors.white],
                      tileMode: TileMode.mirror)
                  .createShader(rect),
              child: Center(
                  child: Icon(
                Icons.account_circle,
                size: 300,
                color: Colors.white,
              )),
            ),
            ShaderMask(
              shaderCallback: (rect) => RadialGradient(
                      center: Alignment.center,
                      radius: 1.0,
                      colors: [Colors.yellow, Colors.orange],
                      tileMode: TileMode.mirror)
                  .createShader(rect),
              child: Center(
                child: Text(
                  'BURNING TEXT !',
                  style: TextStyle(color: Colors.white, fontSize: 45),
                ),
              ),
            ),
          ],
        ));
  }
}
