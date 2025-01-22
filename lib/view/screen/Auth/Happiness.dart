import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/core/constant/HappinessLists.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/core/shared/AppbarSteps.dart';
import 'package:gym_app/core/shared/ProgressIndicator.dart';
import 'package:gym_app/stateManagement/features/HappinessCubit.dart';
import 'package:gym_app/view/widget/Auth/Happiness/happinessContenu.dart';

class Happiness extends StatelessWidget {
  const Happiness({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ConstColors.bg,
        title: const Appbarsteps(),
      ),
      backgroundColor: ConstColors.bg,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Progressindicator(),
            Padding(
              padding: EdgeInsets.only(
                  left: 13.0, top: MediaQuery.of(context).size.height * 0.03),
              child: Text(
                "When was the last time you were happy with your body image ?",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            ...List.generate(4, (index) {
              List<String> titleList = Happinesslists().getTitleList();
              List<String> emojiLists = Happinesslists().getemojiList();
              return Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  BlocBuilder<Happinesscubit, int>(
                    builder: (BuildContext context, int state) {
                      return Happinesscontenu(
                        text: titleList[index],
                        emoji: emojiLists[index],
                        isTapped: state == index ? true : false,
                        index: index,
                      );
                    },
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
