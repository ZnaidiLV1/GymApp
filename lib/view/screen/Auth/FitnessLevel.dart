import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/core/functions/navigator_utils.dart';
import 'package:gym_app/core/shared/AppbarSteps.dart';
import 'package:gym_app/core/shared/ButtonDown.dart';
import 'package:gym_app/core/shared/ProgressIndicator.dart';
import 'package:gym_app/stateManagement/features/StepsCubit.dart';
import 'package:gym_app/view/screen/Home/HomePage.dart';
import 'package:gym_app/view/widget/Auth/FitnessLevel/FitnessRow.dart';
import 'package:gym_app/view/widget/Auth/FitnessLevel/FitnessScale.dart';
import 'package:gym_app/view/widget/Auth/FitnessLevel/FitnessText.dart';

class Motivation extends StatelessWidget {
  const Motivation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        automaticallyImplyLeading: true,
        backgroundColor: ConstColors.bg,
        title: Appbarsteps(),
      ),
      backgroundColor: ConstColors.bg,
      body: Column(
        children: [
          Progressindicator(),
          Fitnesstext(),
          Container(
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.03,
                left: MediaQuery.of(context).size.width * 0.03,
                right: MediaQuery.of(context).size.width * 0.03,
                bottom: 8),
            child: SliderFb3(
              min: 0,
              max: 10,
              divisions: 9,
              onChange: (double) {},
            ),
          ),
          Fitnessrow(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.55,
          ),
          ButtonDown(
              title: "Next",
              isEnabled: true,
              onPressed: () {
                context.read<StepsCubit>().nextStep();
                NavigatorUtils.pushWithTransition(
                  context,
                  HomePage(),
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
