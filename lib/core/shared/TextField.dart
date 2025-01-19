// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class TF extends StatelessWidget {
  String labelText;
  TextEditingController contoller;
  ValueChanged<String> onChanged;
  TF({super.key, required this.contoller, required this.labelText,
  required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.02, left: 15, right: 15),
      child: TextField(
        onChanged : onChanged,
        style: TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          fillColor: Colors.grey,
          focusColor: Colors.grey,
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
