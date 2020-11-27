import 'package:flutter/material.dart';

class myTextField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myTextFieldState();
  }
}

class myTextFieldState extends State<myTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Field'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: TextField(
            autofocus: true,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.newline,
            textCapitalization: TextCapitalization.sentences,
            textAlign: TextAlign.right,
            style: TextStyle(color: Colors.green, fontSize: 25.0),
            cursorColor: Colors.red,
            cursorWidth: 16.0,
            cursorHeight: 20.0,
            cursorRadius: Radius.circular(25.0),
            maxLength: 12,
            maxLines: 1,
            // When use obscure text, maxLines must be 1
            obscureText: true,
            // Hide Password
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.text_fields),
                hintText: 'Enter your Text',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                )),
          ),
        ),
      ),
    );
  }
}
