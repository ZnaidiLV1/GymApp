import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpperTextTargetWeight extends StatelessWidget {
  const UpperTextTargetWeight({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Text(
            "What Is Your Target Weight?",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            "Slide to select your Target Weight in kilograms.",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}