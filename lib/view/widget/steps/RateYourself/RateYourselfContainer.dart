import 'package:flutter/material.dart';
import 'package:gym_app/core/constant/colors.dart';

class RateYourselfContainer extends StatelessWidget {
  final String imageAsset;
  final String MainText;
  final BoxBorder border;
  final VoidCallback ontapVoid;

  RateYourselfContainer({
    Key? key,
    required this.imageAsset,
    required this.MainText,
    required this.border,
    required this.ontapVoid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.03,
        left: MediaQuery.of(context).size.width * 0.03,
        right: MediaQuery.of(context).size.width * 0.03,
      ),
      child: InkWell(
        onTap: ontapVoid,
        child: Container(
          decoration: BoxDecoration(
            color: ConstColors.secondaryColor,
            border: border,
          ),
          height: MediaQuery.of(context).size.height * 0.22,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        MainText,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.asset(imageAsset),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
