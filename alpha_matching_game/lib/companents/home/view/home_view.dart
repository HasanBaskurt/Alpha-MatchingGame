import 'package:alpha_matching_game/companents/home/view/widgets/game_card_area.dart';
import 'package:alpha_matching_game/companents/home/view/widgets/score_area.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: buildBody(),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.purple],
            stops: [0.5, 1.0],
          ),
        ),
      ),
      title: Text('POKEMON',
          style: TextStyle(
              color: Colors.white.withOpacity(0.6),
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 25)),
      centerTitle: true,
    );
  }

  Widget buildBody() {
    return Container(
      padding: EdgeInsets.all(2.h),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red, Colors.purple])),
      child: Column(
        children: [
          const Expanded(flex: 15, child: GameCardArea()),
          Expanded(flex: 2, child: ScoreArea()),
        ],
      ),
    );
  }
}
