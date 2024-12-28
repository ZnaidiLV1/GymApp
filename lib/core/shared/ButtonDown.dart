// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:gym_app/core/constant/colors.dart';

class ButtonDown extends StatelessWidget {
  String title;
  bool isTwo;
  VoidCallback rightFunction;
  VoidCallback leftFunction;
  ButtonDown({super.key, required this.title, required this.isTwo
  ,required this.leftFunction,required this.rightFunction});

  @override
  Widget build(BuildContext context) {
    return isTwo
        ? Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.04),
                height: MediaQuery.of(context).size.width * 0.1,
                width: MediaQuery.of(context).size.width * 0.29,
                decoration: BoxDecoration(
                    color: ConstColors.primaryColor,
                    borderRadius: BorderRadius.circular(25)),
                child: MaterialButton(
                  onPressed: rightFunction,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.navigate_next, size: 30, color: Colors.black),
                    ],
                  ),
                ),
              ),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap:leftFunction,
                child: Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05),
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 70, 67, 67),
                    child: Icon(
                      Icons.arrow_back_ios_new_sharp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap:rightFunction,
                child: Container(
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.04),
                  height: MediaQuery.of(context).size.width * 0.1,
                  width: MediaQuery.of(context).size.width * 0.29,
                  decoration: BoxDecoration(
                      color: ConstColors.primaryColor,
                      borderRadius: BorderRadius.circular(25)),
                  child: MaterialButton(
                    onPressed:rightFunction,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.navigate_next, size: 30, color: Colors.black),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
