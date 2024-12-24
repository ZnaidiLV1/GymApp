// ignore_for_file: prefer_const_constructors

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
        backgroundColor: ConstColors.bg2,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 40.0,
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.start, // Aligns the TabBar to the left
                children: [
                  Flexible(
                    child: TabBar(
                      indicator: null, // Removes the white line
                      isScrollable: true,
                      indicatorWeight: 9,
                      dividerColor: ConstColors.bg2,
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
                  Text(
                    "hi",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            // TabBarView to handle the content
            Expanded(
              child: TabBarView(
                children: [
                  // Login Tab Content
                  Center(
                    child: LoginForm(),
                  ),
                  // Sign Up Tab Content
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
