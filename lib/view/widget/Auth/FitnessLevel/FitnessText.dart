import 'package:flutter/material.dart';

class Fitnesstext extends StatelessWidget {
  const Fitnesstext({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Whats your level of fitness?",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 16),
            child: Text(
              "On scale of 0 to 10, choose your current level of fitness to align your workout plan with.",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
      ],
    );
  }
}