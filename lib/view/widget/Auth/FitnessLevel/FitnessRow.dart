import 'package:flutter/material.dart';

class Fitnessrow extends StatelessWidget {
  const Fitnessrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Worst Shape",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 15),
                child: Text(
                  "I'm on fire",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ],
          );
  }
}