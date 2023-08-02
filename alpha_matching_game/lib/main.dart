import 'package:alpha_matching_game/core/constants/app_constants.dart';
import 'package:alpha_matching_game/locator.dart';
import 'package:alpha_matching_game/store/app/language/viewmodel/language_store.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:alpha_matching_game/utils/locale/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:alpha_matching_game/store/app_store.dart';
import 'package:alpha_matching_game/utils/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await locator<AppStore>().initApp();
  runApp(const AlphaMatchingGame());
}

class AlphaMatchingGame extends StatelessWidget {
  const AlphaMatchingGame({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        localizationsDelegates: const [
          AppLocalizations.delegate,
          FormBuilderLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        translations: locator<LanguageStore>().translates,
        fallbackLocale: locator<LanguageStore>().locale,
        locale: locator<LanguageStore>().locale,
        supportedLocales: locator<LanguageStore>().supportedLocales,
        title: AppConstants.APP_TITLE,
        getPages: AppRouter.getPages,
        initialRoute: AppRouter.initialPath,
        unknownRoute: AppRouter.unknownRoute,
      );
    });
  }
}
