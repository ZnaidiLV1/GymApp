// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/stateManagement/features/DotsFeature.dart';
import 'package:gym_app/stateManagement/features/GenderCubit.dart';
import 'package:gym_app/view/screen/Auth/LoginSignup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=>PageBloc()),
        BlocProvider(create: (_)=>GenderCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login(),
      ),
    );
  }
}