import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/constant/colors.dart';

class Contenuweight extends StatelessWidget {
  final List<int> weight = List.generate(201, (index) => 40 + index);
  final int selectedweight;
  final ValueChanged<int> onweightChanged;

  Contenuweight({
    super.key,
    required this.selectedweight,
    required this.onweightChanged,
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
                      onweightChanged(weight[index]);
                    },
                    scrollController: FixedExtentScrollController(
                      initialItem: weight.indexOf(selectedweight),
                    ),
                    children: weight.map((itemweight) {
                      return Center(
                        child: Text(
                          '$itemweight  kg',
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
