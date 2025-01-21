import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/stateManagement/features/StepsCubit.dart';

class Appbarsteps extends StatelessWidget {
  const Appbarsteps({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            IconButton(
                onPressed: () {
                  context.read<StepsCubit>().previousStep();
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back_ios_sharp,
                  color: ConstColors.primaryColor,
                )),
            BlocBuilder<StepsCubit, int>(
                builder: (BuildContext context, int state) {
              return Text(
                "Step ${state}  of 13",
                style: TextStyle(
                    color: ConstColors.primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              );
            }),
          ],
        );
  }
}