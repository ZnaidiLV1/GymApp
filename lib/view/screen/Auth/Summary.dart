import 'package:flutter/material.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/core/shared/AppbarSteps.dart';
import 'package:gym_app/core/shared/ProgressIndicator.dart';

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ConstColors.bg,
        title: Appbarsteps(),
      ),
      backgroundColor: ConstColors.bg,
      body: Column(
        children: [
          Progressindicator(),
        ],
      ),
    );
  }
}