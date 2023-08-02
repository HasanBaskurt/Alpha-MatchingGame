import 'package:alpha_matching_game/companents/home/viewmodel/home_viewmodel.dart';
import 'package:alpha_matching_game/core/constants/app_image.dart';
import 'package:alpha_matching_game/locator.dart';
import 'package:alpha_matching_game/utils/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectionCardArea extends StatefulWidget {
  const SelectionCardArea({super.key});

  @override
  State<SelectionCardArea> createState() => _SelectionCardAreaState();
}

class _SelectionCardAreaState extends State<SelectionCardArea>
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
        shrinkWrap: true,
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 5,
                child: GestureDetector(
                  onTap: () => Get.toNamed(AppRoutes.HOME_VIEW_PATH),
                  child: Card(
                    shadowColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 10,
                    child: AnimatedBuilder(
                        animation: _controller,
                        builder: (context, _) {
                          return Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: const [Colors.orange, Colors.yellow],
                                  begin: _topAlignmentAnimation.value,
                                  end: _bottomAlignmentAnimation.value,
                                )),
                            child: Image(
                              image: AssetImage(AppImage.pokemonMainLogo),
                              fit: BoxFit.contain,
                            ),
                          );
                        }),
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  'POKEMON',
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        const Shadow(
                          offset: Offset(2, 2),
                          color: Colors.red,
                          blurRadius: 2,
                        ),
                      ],
                      color: Colors.white),
                ),
              ),
            ],
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
