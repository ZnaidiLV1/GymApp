import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/core/functions/navigator_utils.dart';
import 'package:gym_app/stateManagement/features/HappinessCubit.dart';
import 'package:gym_app/stateManagement/features/StepsCubit.dart';
import 'package:gym_app/view/screen/Auth/Motivation.dart';

class Happinesscontenu extends StatelessWidget {
  final String text;
  final String emoji;
  final bool isTapped;
  final int index;
  Happinesscontenu({
    super.key,
    required this.text,
    required this.emoji,
    required this.isTapped,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<Happinesscubit>().updateIndex(index);
        context.read<StepsCubit>().nextStep();
        NavigatorUtils.pushWithTransition(
          context,
          Motivation(),
          begin: Offset(1.0, 0.0),
          curve: Curves.easeInOut,
          duration: Duration(seconds: 1),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: ConstColors.secondaryColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isTapped
                ? ConstColors.primaryColor
                : ConstColors.secondaryColor,
            width: 2,
          ),
        ),
        width: MediaQuery.of(context).size.width * 0.94,
        height: MediaQuery.of(context).size.height * 0.08,
        child: Row(
          children: [
            Radio(
              value: isTapped,
              groupValue: true,
              onChanged: (bool? value) {},
              activeColor: !isTapped
                  ? ConstColors.secondaryColor
                  : ConstColors.primaryColor,
            ),
            Expanded(
              child: Text(
                "$text  $emoji",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
