import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/core/functions/navigator_utils.dart';
import 'package:gym_app/core/shared/AppbarSteps.dart';
import 'package:gym_app/core/shared/ButtonDown.dart';
import 'package:gym_app/core/shared/ProgressIndicator.dart';
import 'package:gym_app/stateManagement/features/StepsCubit.dart';
import 'package:gym_app/stateManagement/global/auth/SignUpCubit.dart';
import 'package:gym_app/view/screen/Auth/Weight.dart';
import 'package:gym_app/view/widget/Auth/Height/ContenuHeight.dart';
import 'package:gym_app/view/widget/Auth/Height/UpperTextHeight.dart';

class Height extends StatelessWidget {
  const Height({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Progressindicator(),
          UpperTextHeight(),
          BlocBuilder<SignUpCubit, SignUpC>(
            builder: (BuildContext context, SignUpC state) {
              return ContenuHeight(
                selectedHeight: state.height,
                onheightChanged: (value) {
                  context.read<SignUpCubit>().updateHeight(value);
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
                    Weight(),
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
