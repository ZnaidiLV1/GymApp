// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:gym_app/core/constant/colors.dart';

class MainGoalContainer extends StatelessWidget {
  String MainText;
  String SubText;
  BoxBorder border;
  VoidCallback ontapVoid;
  MainGoalContainer({
    Key? key,
    required this.MainText,
    required this.SubText,
    required this.border,
    required this.ontapVoid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.05,
          left: MediaQuery.of(context).size.width * 0.03,
          right: MediaQuery.of(context).size.width * 0.03),
      child: InkWell(
        onTap: ontapVoid,
        child:Container(
            decoration: BoxDecoration(
              color: ConstColors.secondaryColor,
              border: border,
            ),
            height: MediaQuery.of(context).size.height * 0.24,
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
                            fontSize: 24),
                      ),
                      Text(
                        SubText,
                        style: TextStyle(
                            color: Color.fromARGB(255, 179, 178, 178),
                            fontWeight: FontWeight.w400,
                            fontSize: 17),
                      ),
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  child: Image.asset("images/muscle.png"),
                ))
              ],
            ),
          ),
      ),
    );
  }
}
