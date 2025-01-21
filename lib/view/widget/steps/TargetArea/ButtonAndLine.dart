import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/stateManagement/features/TargetBodyCubit.dart';

class Buttonandline extends StatelessWidget {
  Buttonandline({super.key});

  final List<String> parts = ["Back", "Pecs", "Arms", "Belly", "Legs"];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: List.generate(parts.length, (index) {
        return Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.02,
            ),
            BlocBuilder<Targetbodycubit, List<bool>>(
                builder: (BuildContext context, List<bool> state) {
              return MaterialButton(
                color: state[index]
                    ? ConstColors.primaryColor
                    : ConstColors.secondaryColor,
                onPressed: () {
                  context.read<Targetbodycubit>().changeBool(index);
                },
                child: Container(
                  alignment: Alignment.center,
                  color: state[index]
                      ? ConstColors.primaryColor
                      : ConstColors.secondaryColor,
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Text(
                    parts[index],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              );
            }),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.028,
            ),
          ],
        );
      }),
    );
  }
}
