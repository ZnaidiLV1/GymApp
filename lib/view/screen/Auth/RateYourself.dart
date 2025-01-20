import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/core/shared/ProgressIndicator.dart';
import 'package:gym_app/stateManagement/features/StepsCubit.dart';

class RateYourself extends StatelessWidget {
  const RateYourself({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ConstColors.bg,
        title: Row(
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
        ),
      ),
      backgroundColor: ConstColors.bg,
      body: Column(
        children: [Progressindicator()],
      ),
    );
  }
}
