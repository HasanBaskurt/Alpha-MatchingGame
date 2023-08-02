import 'package:alpha_matching_game/utils/routes/app_routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRouter {
  static const String initialPath = AppRoutes.SELECTION_VIEW_PATH;
  static final List<GetPage<dynamic>> getPages = AppRoutes.getRoutes;
  static final GetPage<dynamic> unknownRoute = AppRoutes.unknownRoute;
}
