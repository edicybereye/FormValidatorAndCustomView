import 'package:custom_view/custom.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String nama, email, phone, company;
  final _key = new GlobalKey<FormState>();

  _check() {
    final form = _key.currentState;
    if (form.validate()) {
      form.save();
      print('$nama, $email, $phone, $company');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              EditText(
                errorLabel: 'Please fill your fullname',
                label: 'Nama Lengkap',
                onSaved: (a) => nama = a,
              ),
              SizedBox(
                height: 20.0,
              ),
              EditText(
                errorLabel: 'Please fill your email address',
                label: 'Email Address',
                onSaved: (a) => email = a,
              ),
              SizedBox(
                height: 20.0,
              ),
              EditText(
                errorLabel: 'Please fill your phone number',
                label: 'No. Handphone',
                onSaved: (a) => phone = a,
              ),
              SizedBox(
                height: 20.0,
              ),
              EditText(
                errorLabel: 'Please fill your University or Company',
                label: 'University or Company Name',
                onSaved: (a) => company = a,
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomButton(
                label: 'Submit',
                onPressed: () {
                  _check();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
