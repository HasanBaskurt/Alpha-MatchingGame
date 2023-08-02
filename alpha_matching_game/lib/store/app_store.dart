import 'package:alpha_matching_game/locator.dart';
import 'package:alpha_matching_game/store/app/language/viewmodel/language_store.dart';
import 'package:mobx/mobx.dart';
part 'app_store.g.dart';

class AppStore = AppStoreBase with _$AppStore;

abstract class AppStoreBase with Store {
  final language = locator<LanguageStore>();
  @action
  initApp() async {
    await language.populateLanguage();
  }
}
