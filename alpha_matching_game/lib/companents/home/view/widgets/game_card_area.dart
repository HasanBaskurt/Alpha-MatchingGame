import 'package:alpha_matching_game/companents/home/view/widgets/back_card.dart';
import 'package:alpha_matching_game/companents/home/view/widgets/front_card.dart';
import 'package:alpha_matching_game/companents/home/viewmodel/home_viewmodel.dart';
import 'package:alpha_matching_game/core/constants/app_image.dart';
import 'package:alpha_matching_game/locator.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class GameCardArea extends StatefulWidget {
  const GameCardArea({super.key});

  @override
  State<GameCardArea> createState() => _GameCardAreaState();
}

class _GameCardAreaState extends State<GameCardArea>
    with SingleTickerProviderStateMixin {
  final homeViewModel = locator<HomeViewModel>();
  late AnimationController _controller;
  late Animation<Alignment> _topAlignmentAnimation;
  late Animation<Alignment> _bottomAlignmentAnimation;

  @override
  void initState() {
    super.initState();
    buildAnimate();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: AppImage.easyPokemonImageList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return FlipCard(
            side: CardSide.BACK,
            onFlip: () {
              homeViewModel.toogleCard(index);
            },
            front: backCard(
              index,
              _controller,
              _topAlignmentAnimation,
              _bottomAlignmentAnimation,
            ),
            back: frontCard(
                _controller, _topAlignmentAnimation, _bottomAlignmentAnimation),
          );
        });
  }

  void buildAnimate() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    _topAlignmentAnimation = TweenSequence<Alignment>([
      TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.topLeft, end: Alignment.topRight),
          weight: 1),
      TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.topRight, end: Alignment.bottomRight),
          weight: 1),
      TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.bottomRight, end: Alignment.bottomLeft),
          weight: 1),
      TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.bottomLeft, end: Alignment.topLeft),
          weight: 1)
    ]).animate(_controller);
    _bottomAlignmentAnimation = TweenSequence<Alignment>([
      TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.bottomRight, end: Alignment.bottomLeft),
          weight: 1),
      TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.bottomLeft, end: Alignment.topLeft),
          weight: 1),
      TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.topLeft, end: Alignment.topRight),
          weight: 1),
      TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.topRight, end: Alignment.bottomRight),
          weight: 1),
    ]).animate(_controller);
    _controller.repeat();
  }
}
