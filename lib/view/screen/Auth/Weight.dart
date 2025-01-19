import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/core/shared/ButtonDown.dart';
import 'package:gym_app/stateManagement/global/auth/SignUpCubit.dart';
import 'package:gym_app/view/screen/Home/HomePage.dart';
import 'package:gym_app/view/widget/Auth/Weight.dart/ContenuWeight.dart';
import 'package:gym_app/view/widget/Auth/Weight.dart/UpperTextWeight.dart';

class Weight extends StatelessWidget {
  const Weight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.bg,
      body: Column(
        children: [
          UpperTextWeight(),
           BlocBuilder<SignUpCubit, SignUpC>(
            builder: (BuildContext context, SignUpC state) {
              return Contenuweight(
                 selectedweight: state.weight, onweightChanged: (int value) { 
                  context.read<SignUpCubit>().updateWeight(value);
                 },
              );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          ButtonDown(
              title: "Next",
              isTwo: false,
              leftFunction: () {
                Navigator.of(context).pop();
              },
              rightFunction: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()));
              })
        ],
      ),
    );
  }
}
