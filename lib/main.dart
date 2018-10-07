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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
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
            CustomButton(
              label: 'Submit',
              onPressed: () {},
            ),
            
          ],
        ),
      ),
    );
  }
}
