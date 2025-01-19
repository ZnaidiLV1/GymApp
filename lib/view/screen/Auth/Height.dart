import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/core/shared/ButtonDown.dart';
import 'package:gym_app/stateManagement/global/auth/SignUpCubit.dart';
import 'package:gym_app/view/screen/Auth/Weight.dart';
import 'package:gym_app/view/widget/Auth/Height/ContenuHeight.dart';
import 'package:gym_app/view/widget/Auth/Height/UpperTextHeight.dart';

class Height extends StatelessWidget {
  const Height({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.bg,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
                    .push(MaterialPageRoute(builder: (context) => Weight()));
              })
        ],
      ),
    );
  }
}
