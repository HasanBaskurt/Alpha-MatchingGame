import 'package:alpha_matching_game/core/constants/app_image.dart';
import 'package:flutter/material.dart';

Widget frontCard(
    AnimationController controller,
    Animation<Alignment> topAlignmentAnimation,
    Animation<Alignment> bottomAlignmentAnimation) {
  return Card(
    shadowColor: Colors.grey,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    color: Colors.grey,
    elevation: 10,
    child: AnimatedBuilder(
        animation: controller,
        builder: (context, _) {
          return Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: const [Colors.orange, Colors.red],
                  begin: topAlignmentAnimation.value,
                  end: bottomAlignmentAnimation.value,
                )),
            child: Image(
              image: AssetImage(AppImage.pokemonLogo),
              fit: BoxFit.contain,
            ),
          );
        }),
  );
}
