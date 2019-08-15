import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget
{
  CustomInput({@required this.title, @required this.validator, @required this.isPassword, @required this.controller});
  final title, validator, isPassword, controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        return validator(value);
      },
      enabled: true,
      obscureText: isPassword,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          color: Colors.white,
        ),
        hintText: "$title",
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: const BorderRadius.all(
            const Radius.circular(100.0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(100.0)),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}