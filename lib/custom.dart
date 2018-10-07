import 'package:flutter/material.dart';

class EditText extends StatelessWidget {
  final String label;
  final String errorLabel;
  final FormFieldSetter onSaved;
  EditText({this.onSaved, this.errorLabel, this.label});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (e) {
        if (e.isEmpty) {
          return errorLabel;
        }
      },
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          hintText: label,
          labelText: label,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  CustomButton({this.onPressed, this.label});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(30.0),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
