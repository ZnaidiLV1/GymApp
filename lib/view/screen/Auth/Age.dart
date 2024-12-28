// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/core/shared/ButtonDown.dart';
import 'package:gym_app/view/widget/Auth/Age/ContenuAge.dart';
import 'package:gym_app/view/widget/Auth/Age/UpperTextAge.dart';

class Age extends StatelessWidget {
  const Age({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.bg,
      body: Column(children: [
        UpperTextAge(),
        ContenuAge(),
        ButtonDown(
            title: "Next",
            isTwo: false,
            leftFunction: () {
              Navigator.of(context).pop();
            },
            rightFunction: () {})
      ]),
    );
  }
}
