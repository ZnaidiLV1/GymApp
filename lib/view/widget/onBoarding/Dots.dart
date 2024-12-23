// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/data/datasource/OnBoardingSource.dart';
import 'package:gym_app/stateManagement/features/DotsFeature.dart';

class dots extends StatefulWidget {
  dots({super.key});

  @override
  State<dots> createState() => _dotsState();
}

class _dotsState extends State<dots> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageBloc, PageState>(
      builder: (BuildContext context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                onboardingList.length,
                (index) => AnimatedContainer(
                      margin: EdgeInsets.only(right: 10),
                      duration: Duration(milliseconds: 900),
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                          color: index == state.currentPage
                              ? ConstColors.primaryColor
                              : Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                    ))
          ],
        );
      },
    );
  }
}
