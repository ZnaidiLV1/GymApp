// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/stateManagement/features/GenderCubit.dart';

class ContenuGender extends StatelessWidget {
  const ContenuGender({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.07),
        BlocBuilder<GenderCubit, String>(
          builder: (BuildContext context, state) {
            return InkWell(
              onTap: () {
                context.read<GenderCubit>().isFemale();
              },
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.2,
                backgroundColor: state == "female"
                    ? ConstColors.primaryColor
                    : Color.fromARGB(255, 70, 67, 67),
                child: Column(
                  children: [
                    Icon(
                      Icons.female,
                      size: 120,
                      color: Colors.white,
                    ),
                    Text(
                      "Female",
                      style: TextStyle(
                          fontSize: 18,
                          color:
                              state == "female" ? Colors.black : Colors.white),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.06),
        BlocBuilder<GenderCubit, String>(
          builder: (BuildContext context, state) {
            return InkWell(
              onTap: () {
                context.read<GenderCubit>().isMale();
              },
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.2,
                backgroundColor: state == "male"
                    ? ConstColors.primaryColor
                    : Color.fromARGB(255, 70, 67, 67),
                child: Column(
                  children: [
                    Icon(
                      Icons.male,
                      size: 118,
                      color: Colors.white,
                    ),
                    Text(
                      "Male",
                      style: TextStyle(
                          fontSize: 18,
                          color: state == "male" ? Colors.black : Colors.white),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.17),
      ],
    );
  }
}
