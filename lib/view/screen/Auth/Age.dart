// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/core/shared/ButtonDown.dart';
import 'package:gym_app/stateManagement/global/auth/SignUpCubit.dart';
import 'package:gym_app/view/screen/Auth/Height.dart';
import 'package:gym_app/view/widget/Auth/Age/ContenuAge.dart';
import 'package:gym_app/view/widget/Auth/Age/UpperTextAge.dart';

class Age extends StatelessWidget {
  const Age({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.bg,
      body: Column(children: [
        UpperTextAge(),
        BlocBuilder<SignUpCubit, SignUpC>(
          builder: (BuildContext context, state) {
            return ContenuAge(
              selectedAge: state.age,
              onAgeChanged: (int value) {
                context.read<SignUpCubit>().updateAge(value);
              },
            );
          },
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
        ),
        ButtonDown(
            title: "Next",isEnabled: true, onPressed: () { 
               Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Height()));
             })
      ]),
    );
  }
}
