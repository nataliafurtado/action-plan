// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListController on ListControllerBase, Store {
  final _$actionsAtom = Atom(name: 'ListControllerBase.actions');

  @override
  List<ActionEvent> get actions {
    _$actionsAtom.reportRead();
    return super.actions;
  }

  @override
  set actions(List<ActionEvent> value) {
    _$actionsAtom.reportWrite(value, super.actions, () {
      super.actions = value;
    });
  }

  final _$selectedFilterStatusAtom =
      Atom(name: 'ListControllerBase.selectedFilterStatus');

  @override
  String get selectedFilterStatus {
    _$selectedFilterStatusAtom.reportRead();
    return super.selectedFilterStatus;
  }

  @override
  set selectedFilterStatus(String value) {
    _$selectedFilterStatusAtom.reportWrite(value, super.selectedFilterStatus,
        () {
      super.selectedFilterStatus = value;
    });
  }

  final _$loadDataAsyncAction = AsyncAction('ListControllerBase.loadData');

  @override
  Future loadData() {
    return _$loadDataAsyncAction.run(() => super.loadData());
  }

  final _$ListControllerBaseActionController =
      ActionController(name: 'ListControllerBase');

  @override
  dynamic filterStatusActions(String statusPassed) {
    final _$actionInfo = _$ListControllerBaseActionController.startAction(
        name: 'ListControllerBase.filterStatusActions');
    try {
      return super.filterStatusActions(statusPassed);
    } finally {
      _$ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic filterStatusCleanFilter() {
    final _$actionInfo = _$ListControllerBaseActionController.startAction(
        name: 'ListControllerBase.filterStatusCleanFilter');
    try {
      return super.filterStatusCleanFilter();
    } finally {
      _$ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
actions: ${actions},
selectedFilterStatus: ${selectedFilterStatus}
    ''';
  }
}