import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/core/functions/navigator_utils.dart';
import 'package:gym_app/core/shared/AppbarSteps.dart';
import 'package:gym_app/core/shared/ButtonDown.dart';
import 'package:gym_app/core/shared/ProgressIndicator.dart';
import 'package:gym_app/stateManagement/features/StepsCubit.dart';
import 'package:gym_app/stateManagement/features/TargetBodyCubit.dart';
import 'package:gym_app/view/screen/Auth/Happiness.dart';
import 'package:gym_app/view/widget/steps/TargetArea/ButtonAndLine.dart';
import 'package:gym_app/view/widget/steps/TargetArea/TargetAreaPhoto.dart';
import 'package:gym_app/view/widget/steps/TargetArea/lines/line.dart';

class Targetarea extends StatelessWidget {
  Targetarea({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ConstColors.bg,
        title: Appbarsteps(),
      ),
      backgroundColor: ConstColors.bg,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Progressindicator(),
          Expanded(
            child: Stack(
              children: [
                Targetareaphoto(),
                LineExample(),
                Positioned(
                  right: MediaQuery.of(context).size.width * 0.01,
                  top: MediaQuery.of(context).size.height * 0.14,
                  child: Buttonandline(),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.043,
                  left: MediaQuery.of(context).size.width * 0.7,
                  child: BlocBuilder<Targetbodycubit, List<bool>>(
                      builder: (BuildContext context, List<bool> state) {
                    bool isEnabled = state.contains(true);
                    return ButtonDown(
                        title: "Next",
                        isEnabled: isEnabled,
                        onPressed: () {
                          context.read<StepsCubit>().nextStep();
                          NavigatorUtils.pushWithTransition(
                            context,
                            Happiness(),
                            begin: Offset(1.0, 0.0),
                            curve: Curves.easeInOut,
                            duration: Duration(seconds: 1),
                          );
                        });
                  }),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.02,
                      left: MediaQuery.of(context).size.width * 0.09),
                  child: Text(
                    "Choose Your Target Area",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
