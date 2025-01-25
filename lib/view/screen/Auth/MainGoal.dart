import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/core/shared/AppbarSteps.dart';
import 'package:gym_app/core/shared/ProgressIndicator.dart';
import 'package:gym_app/core/functions/navigator_utils.dart';
import 'package:gym_app/stateManagement/features/MainGoalCubit.dart';
import 'package:gym_app/stateManagement/features/StepsCubit.dart';
import 'package:gym_app/view/screen/Auth/RateYourself.dart';
import 'package:gym_app/view/widget/steps/mainGaol/MainGoalContainer.dart';

class MainGoal extends StatelessWidget {
  MainGoal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.bg,
      appBar: AppBar(
        leading: null,
        automaticallyImplyLeading: false,
        backgroundColor: ConstColors.bg,
        title: Appbarsteps(),
      ),
      body: Column(
        children: [
          Progressindicator(),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Choose Your Main Goal",
              style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          BlocBuilder<Maingoalcubit, String>(
              builder: (BuildContext context, String state) {
            return Column(
              children: [
                MainGoalContainer(
                  MainText: 'Muscle Gain',
                  SubText: 'and get rid of fat',
                  border: Border.all(
                    color: state == "gain"
                        ? ConstColors.primaryColor
                        : ConstColors.secondaryColor,
                    width: 3,
                  ),
                  ontapVoid: () {
                    context.read<Maingoalcubit>().gainEmit();
                    context.read<StepsCubit>().nextStep();
                    NavigatorUtils.pushWithTransition(
                      context,
                      RateYourself(),
                      begin: Offset(1.0, 0.0),
                      curve: Curves.easeInOut,
                      duration: Duration(seconds: 1),
                    );
                  },
                ),
                MainGoalContainer(
                  MainText: 'Weight Loss',
                  SubText: 'without losing muscle',
                  border: Border.all(
                    color: state == "loss"
                        ? ConstColors.primaryColor
                        : ConstColors.secondaryColor,
                    width: 3,
                  ),
                  ontapVoid: () {
                    context.read<Maingoalcubit>().lossEmit();
                    context.read<StepsCubit>().nextStep();
                    NavigatorUtils.pushWithTransition(
                      context,
                      RateYourself(),
                      begin: Offset(1.0, 0.0),
                      curve: Curves.easeInOut,
                      duration: Duration(seconds: 1),
                    );
                  },
                ),
              ],
            );
          })
        ],
      ),
    );
  }
}
