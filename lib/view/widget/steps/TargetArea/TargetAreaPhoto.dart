import 'package:flutter/material.dart';

class Targetareaphoto extends StatelessWidget {
  const Targetareaphoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        width: MediaQuery.of(context).size.width * 1,
        alignment: Alignment.topLeft, // Aligns the image to the left
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.1,
          right: MediaQuery.of(context).size.width * 0.2,
          bottom: MediaQuery.of(context).size.height * 0.04,
        ),
        child: Image.asset(
          "images/allbody.png",
          fit: BoxFit.contain, // Ensures the image fits nicely
        ),
      ),
    );
  }
}
