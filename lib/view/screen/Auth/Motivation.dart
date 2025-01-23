import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/core/constant/MotivationLists.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/core/functions/navigator_utils.dart';
import 'package:gym_app/core/shared/AppbarSteps.dart';
import 'package:gym_app/core/shared/ButtonDown.dart';
import 'package:gym_app/core/shared/ProgressIndicator.dart';
import 'package:gym_app/stateManagement/features/MotivationCubit.dart';
import 'package:gym_app/stateManagement/features/StepsCubit.dart';
import 'package:gym_app/view/screen/Home/HomePage.dart';
import 'package:gym_app/view/widget/Auth/Motivation/MotivationContenu.dart';

class Motivation extends StatelessWidget {
  const Motivation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ConstColors.bg,
        title: const Appbarsteps(),
      ),
      backgroundColor: ConstColors.bg,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Progressindicator(),
          Container(
            padding: EdgeInsets.only(
              top: 20,
              left: MediaQuery.of(context).size.width * 0.07,
            ),
            child: const Text(
              "What motivates you to exercise?",
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    BlocBuilder<Motivationcubit, List<bool>>(
                        builder: (BuildContext context, List<bool> state) {
                      return Motivationcontenu(
                        title: Motivationlists().titleListsReturn()[index],
                        isTapped: state[index],
                        index: index,
                      );
                    }),
                  ],
                );
              },
            ),
          ),
          BlocBuilder<Motivationcubit, List<bool>>(
              builder: (BuildContext context, List<bool> state) {
            bool isTapped = state.contains(true);
            return Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ButtonDown(
                  title: "Next", isEnabled: isTapped, onPressed: () {
                    context.read<StepsCubit>().nextStep();
                NavigatorUtils.pushWithTransition(
                  context,
                  HomePage(),
                  begin: Offset(1.0, 0.0),
                  curve: Curves.easeInOut,
                  duration: Duration(seconds: 1),
                );
                  }),
            );
          })
        ],
      ),
    );
  }
}
