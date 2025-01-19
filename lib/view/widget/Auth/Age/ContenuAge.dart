import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/constant/colors.dart';

class ContenuAge extends StatelessWidget {
  final List<int> age = List.generate(83, (index) => 18 + index);
  final int selectedAge;
  final ValueChanged<int> onAgeChanged;

  ContenuAge({
    super.key,
    required this.selectedAge,
    required this.onAgeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.3),
                  child: CupertinoPicker(
                    itemExtent: 60,
                    onSelectedItemChanged: (index) {
                      onAgeChanged(age[index]);
                    },
                    scrollController: FixedExtentScrollController(
                      initialItem: age.indexOf(selectedAge),
                    ),
                    children: age.map((itemAge) {
                      return Center(
                        child: Text(
                          '$itemAge',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white, 
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.26,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.32),
                    height: MediaQuery.of(context).size.height * 0.08,
                    decoration: BoxDecoration(
                      border: Border.symmetric(
                        horizontal: BorderSide(
                            color: ConstColors.primaryColor, width: 4),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
