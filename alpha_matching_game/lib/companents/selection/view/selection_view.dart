import 'package:alpha_matching_game/companents/selection/view/widgets/selection_card_area.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SelectionView extends StatefulWidget {
  const SelectionView({super.key});

  @override
  State<SelectionView> createState() => _SelectionViewState();
}

class _SelectionViewState extends State<SelectionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Container(
      padding: EdgeInsets.all(2.h),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red, Colors.purple])),
      child: Center(child: SelectionCardArea()),
    );
  }
}
