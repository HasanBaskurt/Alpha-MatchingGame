// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on HomeViewModelBase, Store {
  late final _$flipOnTouchListAtom =
      Atom(name: 'HomeViewModelBase.flipOnTouchList', context: context);

  @override
  List<String> get flipOnTouchList {
    _$flipOnTouchListAtom.reportRead();
    return super.flipOnTouchList;
  }

  @override
  set flipOnTouchList(List<String> value) {
    _$flipOnTouchListAtom.reportWrite(value, super.flipOnTouchList, () {
      super.flipOnTouchList = value;
    });
  }

  late final _$pointAtom =
      Atom(name: 'HomeViewModelBase.point', context: context);

  @override
  int get point {
    _$pointAtom.reportRead();
    return super.point;
  }

  @override
  set point(int value) {
    _$pointAtom.reportWrite(value, super.point, () {
      super.point = value;
    });
  }

  late final _$selectedFirstCardIndexAtom =
      Atom(name: 'HomeViewModelBase.selectedFirstCardIndex', context: context);

  @override
  int get selectedFirstCardIndex {
    _$selectedFirstCardIndexAtom.reportRead();
    return super.selectedFirstCardIndex;
  }

  @override
  set selectedFirstCardIndex(int value) {
    _$selectedFirstCardIndexAtom
        .reportWrite(value, super.selectedFirstCardIndex, () {
      super.selectedFirstCardIndex = value;
    });
  }

  late final _$selectedSecondCardIndexAtom =
      Atom(name: 'HomeViewModelBase.selectedSecondCardIndex', context: context);

  @override
  int get selectedSecondCardIndex {
    _$selectedSecondCardIndexAtom.reportRead();
    return super.selectedSecondCardIndex;
  }

  @override
  set selectedSecondCardIndex(int value) {
    _$selectedSecondCardIndexAtom
        .reportWrite(value, super.selectedSecondCardIndex, () {
      super.selectedSecondCardIndex = value;
    });
  }

  late final _$HomeViewModelBaseActionController =
      ActionController(name: 'HomeViewModelBase', context: context);

  @override
  void toogleCard(int index) {
    final _$actionInfo = _$HomeViewModelBaseActionController.startAction(
        name: 'HomeViewModelBase.toogleCard');
    try {
      return super.toogleCard(index);
    } finally {
      _$HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
flipOnTouchList: ${flipOnTouchList},
point: ${point},
selectedFirstCardIndex: ${selectedFirstCardIndex},
selectedSecondCardIndex: ${selectedSecondCardIndex}
    ''';
  }
}
