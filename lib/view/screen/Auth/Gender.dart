// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/core/shared/ButtonDown.dart';
import 'package:gym_app/view/screen/Auth/Age.dart';
import 'package:gym_app/view/widget/Auth/Gender/ContenuGender.dart';
import 'package:gym_app/view/widget/Auth/Gender/UpperTextGender.dart';

class Gender extends StatelessWidget {
  Gender({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.bg,
      body: SafeArea(
        child: Column(
          children: [
            UpperTextGender(),
            ContenuGender(),
            ButtonDown(
            title: "Next",isEnabled: true, onPressed: () { 
               Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Age()));
             })
          ],
        ),
      ),
    );
  }
}
