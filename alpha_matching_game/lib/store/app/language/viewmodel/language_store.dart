// ignore_for_file: no_leading_underscores_for_local_identifiers, library_private_types_in_public_api, prefer_final_fields, unnecessary_brace_in_string_interps, prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:alpha_matching_game/core/constants/app_constants.dart';
import 'package:alpha_matching_game/core/storage/shared_preferences.dart';
import 'package:alpha_matching_game/locator.dart';
import 'package:alpha_matching_game/store/app/language/model/language.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mobx/mobx.dart';

part 'language_store.g.dart';

class LanguageStore = _LanguageStore with _$LanguageStore;

class LanguagesTranslations extends Translations {
  Map<String, Map<String, String>> _localizedValues = {};
  LanguagesTranslations(this._localizedValues);

  @override
  Map<String, Map<String, String>> get keys => _localizedValues;
}

abstract class _LanguageStore with Store {
  @observable
  Map<String, Map<String, String>> _translates = {};

  @computed
  LanguagesTranslations get translates => LanguagesTranslations(_translates);

  @action
  _populateTranslates() async {
    Map<String, Map<String, String>> __translates = {};
    for (var i = 0; i < supportedLanguages.length; i++) {
      final __language = supportedLanguages[i];
      final __strings = await _getStrings(__language.locale);
      __translates
          .addAll({"${__language.locale}_${__language.code}": __strings});
    }
    _translates = __translates;
  }

  Future<Map<String, String>> _getStrings(String? __locale) async {
    if (__locale == null) {
      return {};
    }

    return await rootBundle
        .loadString('assets/languages/${__locale}.json')
        .then((value) {
      return Map<String, String>.from(json.decode(value));
    });
  }

  @action
  Future<void> populateLanguage() async {
    await _populateTranslates();
    String _selectedLocale =
        await LocalStorage.getString(AppConstants.SELECTED_LANGUAGE_KEY) ??
            AppConstants.DEFAULT_LANGUAGE_LOCALE;
    await changeLanguage(_selectedLocale);
    return Future.value();
  }

  final List<Language> supportedLanguages = [
    Language(
      code: 'TR',
      locale: 'tr',
      language: 'Türkçe',
      selectLanguage: () {
        locator<LanguageStore>().changeLanguage('tr');
      },
    ),
    Language(
      code: 'US',
      locale: 'en',
      language: 'English',
      selectLanguage: () {
        locator<LanguageStore>().changeLanguage('en');
      },
    ),
  ];

  List<Locale> get supportedLocales => supportedLanguages
      .map(
        (e) => Locale(e.locale!, e.code),
      )
      .toList();

  @observable
  String _locale = "tr";

  @computed
  Locale get locale => Locale(_locale);

  @action
  Future<void> changeLanguage(String value) async {
    LocalStorage.setString(AppConstants.SELECTED_LANGUAGE_KEY, value);
    _locale = value;
    Get.updateLocale(locale);
    Get.forceAppUpdate();
    return Future.value();
  }

  @action
  String getCode() {
    var code;

    if (_locale == 'tr') {
      code = "TR";
    } else if (_locale == 'en') {
      code = "US";
    }

    return code;
  }

  @action
  Language getCurrentLanguage() {
    return supportedLanguages
        .firstWhere((language) => language.locale == _locale);
  }
}
