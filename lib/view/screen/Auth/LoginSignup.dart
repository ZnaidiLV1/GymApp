// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gym_app/core/constant/colors.dart';

import '../../widget/Auth/LoginForm.dart';
import '../../widget/Auth/SignUpForm.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: ConstColors.bg,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 40.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: TabBar(
                      indicator: null,
                      isScrollable: true,
                      indicatorWeight: 9,
                      dividerColor: ConstColors.bg,
                      indicatorColor: ConstColors.primaryColor,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.white,
                      labelStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      tabs: [
                        Tab(text: 'Login'),
                        Tab(text: 'Sign Up'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.03),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("images/logo.jpg"),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.09),
                      child: LoginForm()),
                  Center(
                    child: SignUpForm(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
