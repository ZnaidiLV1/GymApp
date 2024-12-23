// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gym_app/core/constant/colors.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
              bottom: MediaQuery.of(context).size.width * 0.15,
              right: 20,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: ConstColors.primaryColor,
                child: MaterialButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.arrow_forward_sharp,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    size: 30,
                  ),
                ),
              ));
  }
}