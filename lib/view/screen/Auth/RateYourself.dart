import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/core/shared/AppbarSteps.dart';
import 'package:gym_app/core/shared/ProgressIndicator.dart';
import 'package:gym_app/core/shared/navigator_utils.dart';
import 'package:gym_app/stateManagement/features/RateYourselCubit.dart';
import 'package:gym_app/stateManagement/features/StepsCubit.dart';
import 'package:gym_app/view/screen/Auth/TargetArea.dart';
import 'package:gym_app/view/widget/steps/RateYourself/RateYourselfContainer.dart';

class RateYourself extends StatelessWidget {
  const RateYourself({super.key});

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
        children: [
          Progressindicator(),
          Container(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
            child: Text(
              "How Do You think You \nLook Like Now ?",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          BlocBuilder<Rateyourselcubit, String>(
              builder: (BuildContext context, String state) {
            return Column(
              children: [
                RateYourselfContainer(
                    imageAsset: "images/averge.png",
                    MainText: "slim Body",
                    border: Border.all(
                      color: state == "regular"
                          ? ConstColors.primaryColor
                          : ConstColors.secondaryColor,
                      width: 3,
                    ),
                    ontapVoid: () {
                      context.read<Rateyourselcubit>().regularEmit();
                      context.read<StepsCubit>().nextStep();
                      NavigatorUtils.pushWithTransition(
                        context,
                        Targetarea(),
                        begin: Offset(1.0, 0.0),
                        curve: Curves.easeInOut,
                        duration: Duration(seconds: 1),
                      );
                    }),
                RateYourselfContainer(
                    imageAsset: "images/slim.png",
                    MainText: "Regular Body",
                    border: Border.all(
                      color: state == "slim"
                          ? ConstColors.primaryColor
                          : ConstColors.secondaryColor,
                      width: 3,
                    ),
                    ontapVoid: () {
                      context.read<Rateyourselcubit>().slimEmit();
                      context.read<StepsCubit>().nextStep();
                      NavigatorUtils.pushWithTransition(
                        context,
                        Targetarea(),
                        begin: Offset(1.0, 0.0),
                        curve: Curves.easeInOut,
                        duration: Duration(seconds: 1),
                      );
                    }),
                RateYourselfContainer(
                    imageAsset: "images/fat.png",
                    MainText: "Fat Body",
                    border: Border.all(
                      color: state == "fat"
                          ? ConstColors.primaryColor
                          : ConstColors.secondaryColor,
                      width: 3,
                    ),
                    ontapVoid: () {
                      context.read<Rateyourselcubit>().fatEmit();
                      context.read<StepsCubit>().nextStep();
                      NavigatorUtils.pushWithTransition(
                        context,
                        Targetarea(),
                        begin: Offset(1.0, 0.0),
                        curve: Curves.easeInOut,
                        duration: Duration(seconds: 1),
                      );
                    }),
              ],
            );
          })
        ],
      ),
    );
  }
}
