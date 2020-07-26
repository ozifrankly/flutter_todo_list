// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<ObservableList<TaskStore>> _$checkedsComputed;

  @override
  ObservableList<TaskStore> get checkeds => (_$checkedsComputed ??=
          Computed<ObservableList<TaskStore>>(() => super.checkeds,
              name: '_HomeControllerBase.checkeds'))
      .value;

  final _$listAtom = Atom(name: '_HomeControllerBase.list');

  @override
  ObservableList<TaskStore> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(ObservableList<TaskStore> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void addTask(TaskStore task) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.addTask');
    try {
      return super.addTask(task);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTask(TaskStore task) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.removeTask');
    try {
      return super.removeTask(task);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void checkTask(int index, bool checked) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.checkTask');
    try {
      return super.checkTask(index, checked);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
list: ${list},
checkeds: ${checkeds}
    ''';
  }
}
