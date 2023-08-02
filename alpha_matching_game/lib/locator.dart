import 'package:alpha_matching_game/companents/home/viewmodel/home_viewmodel.dart';
import 'package:alpha_matching_game/companents/selection/viewmodel/selection_viewmodel.dart';
import 'package:alpha_matching_game/store/app/language/viewmodel/language_store.dart';
import 'package:alpha_matching_game/store/app_store.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<HomeViewModel>(HomeViewModel());
  locator.registerSingleton<SelectionViewModel>(SelectionViewModel());
  locator.registerSingleton<LanguageStore>(LanguageStore());
  locator.registerSingleton<AppStore>(AppStore());
}
