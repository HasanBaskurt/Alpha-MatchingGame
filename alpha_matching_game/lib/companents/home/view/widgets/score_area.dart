import 'package:alpha_matching_game/companents/home/viewmodel/home_viewmodel.dart';
import 'package:alpha_matching_game/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';

class ScoreArea extends StatelessWidget {
  ScoreArea({super.key});

  final homeViewModel = locator<HomeViewModel>();
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.grey,
      elevation: 10,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              colors: [Colors.orange, Colors.red],
            )),
        child: Center(child: Observer(builder: (context) {
          return Text(
            '${'score'.tr} : ${homeViewModel.point}',
            style: TextStyle(
                color: Colors.white.withOpacity(0.6),
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 20),
          );
        })),
      ),
    );
  }
}
