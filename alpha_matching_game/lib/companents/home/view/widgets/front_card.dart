// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class FrontCard extends StatelessWidget {
  FrontCard(
      {Key? key,
      required this.gameImage,
      required this.controller,
      required this.topAlignmentAnimation,
      required this.bottomAlignmentAnimation})
      : super(key: key);
  String gameImage;
  AnimationController controller;
  Animation<Alignment> topAlignmentAnimation;
  Animation<Alignment> bottomAlignmentAnimation;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 10,
      child: AnimatedBuilder(
          animation: controller,
          builder: (context, _) {
            return Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: const [Colors.orange, Colors.yellow],
                    begin: topAlignmentAnimation.value,
                    end: bottomAlignmentAnimation.value,
                  )),
              child: Image(
                image: AssetImage(gameImage),
                fit: BoxFit.contain,
              ),
            );
          }),
    );
  }
}
