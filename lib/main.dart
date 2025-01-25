// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/stateManagement/features/DotsFeature.dart';
import 'package:gym_app/stateManagement/features/GenderCubit.dart';
import 'package:gym_app/stateManagement/features/HappinessCubit.dart';
import 'package:gym_app/stateManagement/features/MainGoalCubit.dart';
import 'package:gym_app/stateManagement/features/MotivationCubit.dart';
import 'package:gym_app/stateManagement/features/RateYourselCubit.dart';
import 'package:gym_app/stateManagement/features/StepsCubit.dart';
import 'package:gym_app/stateManagement/features/TargetBodyCubit.dart';
import 'package:gym_app/stateManagement/global/auth/SignUpCubit.dart';
import 'package:gym_app/view/screen/landingPage/onboardding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => PageBloc()),
        BlocProvider(create: (_) => GenderCubit()),
        BlocProvider(create: (_) => SignUpCubit()),
        BlocProvider(create: (_) => StepsCubit()),
        BlocProvider(create: (_) => Maingoalcubit()),
        BlocProvider(create: (_) => Rateyourselcubit()),
        BlocProvider(create: (_) => Targetbodycubit()),
        BlocProvider(create: (_) => Happinesscubit()),
        BlocProvider(create: (_) => Motivationcubit())
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false, home: OnBoarding()),
    );
  }
}
