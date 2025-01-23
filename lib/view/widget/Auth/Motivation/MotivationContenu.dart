// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/stateManagement/features/MotivationCubit.dart';

class Motivationcontenu extends StatelessWidget {
  final String title;
  final bool isTapped;
  final int index;
  const Motivationcontenu({
    Key? key,
    required this.title,
    required this.isTapped,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(index);

        print(isTapped);
        context.read<Motivationcubit>().boolChanged(index);
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width * 0.93,
        decoration: BoxDecoration(
            color: ConstColors.secondaryColor,
            border: Border.all(
                color: isTapped
                    ? ConstColors.primaryColor
                    : ConstColors.secondaryColor,
                width: 3)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(
                isTapped ? Icons.check_box : Icons.check_box_outline_blank,
                size: 30,
                color: isTapped ? ConstColors.primaryColor : Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
