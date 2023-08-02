// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LanguageStore on _LanguageStore, Store {
  Computed<LanguagesTranslations>? _$translatesComputed;

  @override
  LanguagesTranslations get translates => (_$translatesComputed ??=
          Computed<LanguagesTranslations>(() => super.translates,
              name: '_LanguageStore.translates'))
      .value;
  Computed<Locale>? _$localeComputed;

  @override
  Locale get locale => (_$localeComputed ??=
          Computed<Locale>(() => super.locale, name: '_LanguageStore.locale'))
      .value;

  late final _$_translatesAtom =
      Atom(name: '_LanguageStore._translates', context: context);

  @override
  Map<String, Map<String, String>> get _translates {
    _$_translatesAtom.reportRead();
    return super._translates;
  }

  @override
  set _translates(Map<String, Map<String, String>> value) {
    _$_translatesAtom.reportWrite(value, super._translates, () {
      super._translates = value;
    });
  }

  late final _$_localeAtom =
      Atom(name: '_LanguageStore._locale', context: context);

  @override
  String get _locale {
    _$_localeAtom.reportRead();
    return super._locale;
  }

  @override
  set _locale(String value) {
    _$_localeAtom.reportWrite(value, super._locale, () {
      super._locale = value;
    });
  }

  late final _$_populateTranslatesAsyncAction =
      AsyncAction('_LanguageStore._populateTranslates', context: context);

  @override
  Future _populateTranslates() {
    return _$_populateTranslatesAsyncAction
        .run(() => super._populateTranslates());
  }

  late final _$populateLanguageAsyncAction =
      AsyncAction('_LanguageStore.populateLanguage', context: context);

  @override
  Future<void> populateLanguage() {
    return _$populateLanguageAsyncAction.run(() => super.populateLanguage());
  }

  late final _$changeLanguageAsyncAction =
      AsyncAction('_LanguageStore.changeLanguage', context: context);

  @override
  Future<void> changeLanguage(String value) {
    return _$changeLanguageAsyncAction.run(() => super.changeLanguage(value));
  }

  late final _$_LanguageStoreActionController =
      ActionController(name: '_LanguageStore', context: context);

  @override
  String getCode() {
    final _$actionInfo = _$_LanguageStoreActionController.startAction(
        name: '_LanguageStore.getCode');
    try {
      return super.getCode();
    } finally {
      _$_LanguageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  Language getCurrentLanguage() {
    final _$actionInfo = _$_LanguageStoreActionController.startAction(
        name: '_LanguageStore.getCurrentLanguage');
    try {
      return super.getCurrentLanguage();
    } finally {
      _$_LanguageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
translates: ${translates},
locale: ${locale}
    ''';
  }
}
