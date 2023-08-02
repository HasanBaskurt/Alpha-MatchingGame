// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:alpha_matching_game/companents/atomic_screen/error_screen.dart';
import 'package:alpha_matching_game/companents/home/view/home_view.dart';
import 'package:alpha_matching_game/companents/selection/view/selection_view.dart';
import 'package:alpha_matching_game/companents/splash/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const Transition _transition = Transition.native;
  static const Duration _transitionDuration = Duration(milliseconds: 500);

  static const String INIT_PATH = "/splashPath";
  static const String HOME_VIEW_PATH = "/homeViewPath";
  static const String SELECTION_VIEW_PATH = "/selectionViewPath";
  static const String ERROR_PATH = "/errorPath";
  static GetPage getPage(
    Widget Function() widgetFn,
    String path, {
    Transition? transition,
    List<GetPage>? children,
  }) {
    return GetPage(
      name: path,
      transition: transition ?? _transition,
      transitionDuration: _transitionDuration,
      fullscreenDialog: true,
      page: widgetFn,
      children: children ?? [],
    );
  }

  static final getRoutes = <GetPage>[
    getPage(() => const SplashView(), INIT_PATH),
    getPage(() => const HomeView(), HOME_VIEW_PATH),
    getPage(() => const SelectionView(), SELECTION_VIEW_PATH),
    unknownRoute,
  ];

  static final unknownRoute = getPage(() => const ErrorScreen(), ERROR_PATH);
}
