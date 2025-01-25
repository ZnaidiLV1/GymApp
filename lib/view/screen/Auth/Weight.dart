import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/core/functions/navigator_utils.dart';
import 'package:gym_app/core/shared/AppbarSteps.dart';
import 'package:gym_app/core/shared/ButtonDown.dart';
import 'package:gym_app/core/shared/ProgressIndicator.dart';
import 'package:gym_app/stateManagement/features/StepsCubit.dart';
import 'package:gym_app/stateManagement/global/auth/SignUpCubit.dart';
import 'package:gym_app/view/screen/Auth/TargetWeight.dart';
import 'package:gym_app/view/widget/Auth/Weight.dart/ContenuWeight.dart';
import 'package:gym_app/view/widget/Auth/Weight.dart/UpperTextWeight.dart';

class Weight extends StatelessWidget {
  const Weight({super.key});

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
          UpperTextWeight(),
          BlocBuilder<SignUpCubit, SignUpC>(
            builder: (BuildContext context, SignUpC state) {
              return Contenuweight(
                selectedweight: state.weight,
                onweightChanged: (int value) {
                  context.read<SignUpCubit>().updateWeight(value);
                },
              );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          ButtonDown(
              title: "Next",
              isEnabled: true,
              onPressed: () {
                context.read<StepsCubit>().nextStep();
                NavigatorUtils.pushWithTransition(
                      context,
                      Targetweight(),
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
