// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_acess.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GlobalAccess on GlobalAccessBase, Store {
  final _$landingPagesAtom = Atom(name: 'GlobalAccessBase.landingPages');

  @override
  List<String> get landingPages {
    _$landingPagesAtom.reportRead();
    return super.landingPages;
  }

  @override
  set landingPages(List<String> value) {
    _$landingPagesAtom.reportWrite(value, super.landingPages, () {
      super.landingPages = value;
    });
  }

  final _$selectPageIndexAtom = Atom(name: 'GlobalAccessBase.selectPageIndex');

  @override
  int get selectPageIndex {
    _$selectPageIndexAtom.reportRead();
    return super.selectPageIndex;
  }

  @override
  set selectPageIndex(int value) {
    _$selectPageIndexAtom.reportWrite(value, super.selectPageIndex, () {
      super.selectPageIndex = value;
    });
  }

  final _$GlobalAccessBaseActionController =
      ActionController(name: 'GlobalAccessBase');

  @override
  dynamic nextPage() {
    final _$actionInfo = _$GlobalAccessBaseActionController.startAction(
        name: 'GlobalAccessBase.nextPage');
    try {
      return super.nextPage();
    } finally {
      _$GlobalAccessBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic lastPage() {
    final _$actionInfo = _$GlobalAccessBaseActionController.startAction(
        name: 'GlobalAccessBase.lastPage');
    try {
      return super.lastPage();
    } finally {
      _$GlobalAccessBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
landingPages: ${landingPages},
selectPageIndex: ${selectPageIndex}
    ''';
  }
}
