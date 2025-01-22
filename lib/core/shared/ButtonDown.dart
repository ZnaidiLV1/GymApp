// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:gym_app/core/constant/colors.dart';

class ButtonDown extends StatelessWidget {
  final String title;
  final bool isEnabled;
  final VoidCallback onPressed;

  ButtonDown({
    super.key,
    required this.title,
    required this.isEnabled,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin:
              EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.04),
          height: MediaQuery.of(context).size.width * 0.1,
          width: MediaQuery.of(context).size.width * 0.29,
          decoration: BoxDecoration(
            color: isEnabled
                ? ConstColors.primaryColor
                : ConstColors.disabledColor,
            borderRadius: BorderRadius.circular(25),
          ),
          child: MaterialButton(
            onPressed:
                isEnabled ? onPressed : null, // Disable button if not enabled
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    color: isEnabled
                        ? Colors.white
                        : Color.fromARGB(255, 86, 82,
                            82), // Text color changes based on state
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.navigate_next,
                  size: 30,
                  color: isEnabled
                      ? Colors.white
                      : Color.fromARGB(
                          255, 86, 82, 82), // Icon color changes based on state
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
