import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/core/constant/meteorShower.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.bg,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 1,
                    child: MeteorShower(
                      numberOfMeteors: 15,
                      duration: const Duration(seconds: 7),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: 100,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 600,
                child: Image.asset("images/waiting.png"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
