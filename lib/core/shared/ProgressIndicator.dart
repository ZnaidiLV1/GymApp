import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/stateManagement/features/StepsCubit.dart';

class Progressindicator extends StatelessWidget {
  const Progressindicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StepsCubit, int>(
              builder: (BuildContext context, int state) {
            return LinearProgressIndicator(
              value: state / 13,
              backgroundColor: Colors.grey,
              valueColor:
                  AlwaysStoppedAnimation<Color>(ConstColors.primaryColor),
            );
          });
  }
}