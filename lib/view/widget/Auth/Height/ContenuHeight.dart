import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/constant/colors.dart';

class ContenuHeight extends StatelessWidget {
  final List<int> height = List.generate(140, (index) => 60 + index);
  final int selectedHeight;
  final ValueChanged<int> onheightChanged;

  ContenuHeight({
    super.key,
    required this.selectedHeight,
    required this.onheightChanged,
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
                      onheightChanged(height[index]);
                    },
                    scrollController: FixedExtentScrollController(
                      initialItem: height.indexOf(selectedHeight),
                    ),
                    children: height.map((itemheight) {
                      return Center(
                        child: Text(
                          '$itemheight  cm',
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
