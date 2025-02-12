// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unnecessary_new, must_be_immutable, use_key_in_widget_constructors, unnecessary_import

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/core/functions/navigator_utils.dart';
import 'package:gym_app/core/shared/ButtonDown.dart';
import 'package:gym_app/core/shared/TextField.dart';
import 'package:gym_app/stateManagement/global/auth/SignUpCubit.dart';
import 'package:gym_app/view/screen/Auth/MainGoal.dart';

class SignUpForm extends StatelessWidget {
  TextEditingController emailC = new TextEditingController();
  TextEditingController passwordC = new TextEditingController();
  TextEditingController confirmC = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            ClipPath(
              clipper: CustomCutClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.38,
                child: Image.asset("images/gymSignUp.jpg", fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.06, left: 15),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 25.0,
                  spreadRadius: 10.0,
                  offset: Offset(0, 10),
                )
              ]),
              child: Text(
                "Get Started!",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            )
          ]),
          BlocBuilder<SignUpCubit, SignUpC>(
            builder: (BuildContext context, SignUpC state) {
              return Column(
                children: [
                  TF(
                    contoller: state.email,
                    labelText: "Email",
                    onChanged: (String value) {
                      context.read<SignUpCubit>().updateEmail(value);
                    },
                  ),
                  SizedBox(height: 10),
                  TF(
                    contoller: state.password,
                    labelText: "Password",
                    onChanged: (String value) {
                      context.read<SignUpCubit>().updateEmail(value);
                    },
                  ),
                  SizedBox(height: 10),
                ],
              );
            },
          ),
          TF(
            contoller: confirmC,
            labelText: "Confirm Password",
            onChanged: (String value) {},
          ),
          SizedBox(height: 20),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.03,
          ),
          ButtonDown(
              title: "Next",
              isEnabled: true,
              onPressed: () {
                NavigatorUtils.pushWithTransition(
                  context,
                  MainGoal(),
                  begin: Offset(1.0, 0.0),
                  curve: Curves.easeInOut,
                  duration: Duration(seconds: 1),
                );
              })
        ],
      ),
    );
  }
}

class CustomCutClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.lineTo(
      size.width,
      size.height * 0.7,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
