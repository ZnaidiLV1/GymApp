// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gym_app/core/constant/TargetAreaLists.dart';
import 'package:gym_app/core/constant/colors.dart';
import 'package:gym_app/stateManagement/features/TargetBodyCubit.dart';

class LineExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List list = Targetarealists(context: context).getList2();
    return Center(
      child: Stack(
        children: List.generate(5, (index) {
          return Stack(
            children: [
              Positioned(
                top: list[index][0],
                left: list[index][1],
                child: BlocBuilder<Targetbodycubit, List<bool>>(
                    builder: (BuildContext context, List<bool> state) {
                  return Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: state[index]
                          ? ConstColors.primaryColor
                          : ConstColors.secondaryColor,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: state[index]
                              ? ConstColors.primaryColor
                              : ConstColors.secondaryColor,
                          width: 2),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  );
                }),
              ),
              Positioned(
                top: list[index][2],
                left: 180,
                child: BlocBuilder<Targetbodycubit, List<bool>>(
                    builder: (BuildContext context, List<bool> state) {
                  return CustomPaint(
                    size: Size(200, 200),
                    painter: LinePainter(index: index, context: context, tapped: state[index]),
                  );
                }),
              ),
            ],
          );
        }),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  final BuildContext context;
  final int index;
  final bool tapped;

  LinePainter({
    required this.context,
    required this.index,
    required this.tapped,
  });

  @override
  void paint(Canvas canvas, Size size) {
    List list = Targetarealists(context: context).getList();
    final paint = Paint()
      ..color = tapped?ConstColors.primaryColor:ConstColors.secondaryColor
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;
    final path = Path();
    path.moveTo(list[index][0], list[index][1]);
    path.lineTo(list[index][2], list[index][3]);
    path.lineTo(list[index][4], list[index][5]);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
