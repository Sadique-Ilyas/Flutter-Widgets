import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class myForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myFormState();
  }
}

class myFormState extends State<myForm> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, String> formData = {'email': '', 'name': ''};

  void _submitForm() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
    }
    Fluttertoast.showToast(msg: formData['name'] + "\n" + formData['email']);
  }

  Widget _nameField() {
    return TextFormField(
      onSaved: (String value) {
        formData['name'] = value;
      },
      decoration: const InputDecoration(
        icon: Icon(Icons.person),
        hintText: 'Enter your Name',
        labelText: 'Name',
      ),
    );
  }

  Widget _emailField() {
    return TextFormField(
      onSaved: (String value) {
        formData['email'] = value;
      },
      decoration: const InputDecoration(
        icon: Icon(Icons.email),
        hintText: 'Enter your Email',
        labelText: 'Email',
      ),
    );
  }

  Widget _buttonField() {
    return RaisedButton(
      child: Text('Submit'),
      onPressed: () {
        _submitForm();
      },
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[_nameField(), _emailField(), _buttonField()],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Form'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: _buildForm(),
        ));
  }
}
