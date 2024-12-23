// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/data/datasource/OnBoardingSource.dart';
import 'package:gym_app/stateManagement/features/DotsFeature.dart';
import 'package:gym_app/view/widget/onBoarding/Dots.dart';
import 'package:gym_app/view/widget/onBoarding/onBoardingButton.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({super.key});
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            onPageChanged: (int pageIndex) {
              context.read<PageBloc>().add(pageChanged(pageIndex));
            },
            itemCount: onboardingList.length,
            itemBuilder: (context, index) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
          onboardingList[index].image,
          fit: BoxFit.fill,
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.08,
          bottom: MediaQuery.of(context).size.height * 0.42,
          child: Text(
            "DON'T QUIT STAY FIT",
            style: TextStyle(
                decorationColor: ConstColors.primaryColor,
                fontSize: 22,
                color: ConstColors.primaryColor,
                fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.08,
          bottom: MediaQuery.of(context).size.height * 0.38,
          child: dots(),
        ),
        BlocBuilder<PageBloc, PageState>(
          builder: (BuildContext context, state) {
            return AnimatedPositioned(
              duration: Duration(milliseconds: 700),
              curve: Curves.easeInOut,
              left: state.currentPage == index
                  ? MediaQuery.of(context).size.width * 0.08
                  : MediaQuery.of(context).size.width,
              bottom: MediaQuery.of(context).size.height * 0.31,
              child: Text(
                onboardingList[index].title,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
        ),
        BlocBuilder<PageBloc, PageState>(
          builder: (BuildContext context, state) {
            return AnimatedPositioned(
              duration: Duration(milliseconds: 700),
              curve: Curves.easeInOut,
              left: state.currentPage == index
                  ? MediaQuery.of(context).size.width * 0.09
                  : -MediaQuery.of(context).size.width,
              bottom: MediaQuery.of(context).size.height * 0.17,
              child: Positioned(
                left: MediaQuery.of(context).size.width * 0.09,
                bottom: MediaQuery.of(context).size.height * 0.17,
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    onboardingList[index].description,
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Sans',
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            );
          },
        )
                  ],
              );
            },
          ),
          OnBoardingButton()
        ],
      ),
    );
  }
}
