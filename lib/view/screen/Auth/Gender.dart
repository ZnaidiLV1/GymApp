// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/core/functions/navigator_utils.dart';
import 'package:gym_app/core/shared/AppbarSteps.dart';
import 'package:gym_app/core/shared/ButtonDown.dart';
import 'package:gym_app/core/shared/ProgressIndicator.dart';
import 'package:gym_app/stateManagement/features/StepsCubit.dart';
import 'package:gym_app/view/screen/Auth/Height.dart';
import 'package:gym_app/view/widget/Auth/Gender/ContenuGender.dart';
import 'package:gym_app/view/widget/Auth/Gender/UpperTextGender.dart';

class Gender extends StatelessWidget {
  Gender({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ConstColors.bg,
        title: Appbarsteps(),
      ),
      backgroundColor: ConstColors.bg,
      body: SafeArea(
        child: Column(
          children: [
            Progressindicator(),
            UpperTextGender(),
            ContenuGender(),
            ButtonDown(
                title: "Next",
                isEnabled: true,
                onPressed: () {
                  context.read<StepsCubit>().nextStep();
               NavigatorUtils.pushWithTransition(
                      context,
                      Height(),
                      begin: Offset(1.0, 0.0),
                      curve: Curves.easeInOut,
                      duration: Duration(seconds: 1),
                    );
                })
          ],
        ),
      ),
    );
  }
}
