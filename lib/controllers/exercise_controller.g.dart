// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ExerciseController on ExerciseControllerBase, Store {
  final _$numberNAtom = Atom(name: 'ExerciseControllerBase.numberN');

  @override
  String get numberN {
    _$numberNAtom.context.enforceReadPolicy(_$numberNAtom);
    _$numberNAtom.reportObserved();
    return super.numberN;
  }

  @override
  set numberN(String value) {
    _$numberNAtom.context.conditionallyRunInAction(() {
      super.numberN = value;
      _$numberNAtom.reportChanged();
    }, _$numberNAtom, name: '${_$numberNAtom.name}_set');
  }

  final _$numberSendedAtom = Atom(name: 'ExerciseControllerBase.numberSended');

  @override
  int get numberSended {
    _$numberSendedAtom.context.enforceReadPolicy(_$numberSendedAtom);
    _$numberSendedAtom.reportObserved();
    return super.numberSended;
  }

  @override
  set numberSended(int value) {
    _$numberSendedAtom.context.conditionallyRunInAction(() {
      super.numberSended = value;
      _$numberSendedAtom.reportChanged();
    }, _$numberSendedAtom, name: '${_$numberSendedAtom.name}_set');
  }

  final _$textAtom = Atom(name: 'ExerciseControllerBase.text');

  @override
  String get text {
    _$textAtom.context.enforceReadPolicy(_$textAtom);
    _$textAtom.reportObserved();
    return super.text;
  }

  @override
  set text(String value) {
    _$textAtom.context.conditionallyRunInAction(() {
      super.text = value;
      _$textAtom.reportChanged();
    }, _$textAtom, name: '${_$textAtom.name}_set');
  }

  final _$isOKAtom = Atom(name: 'ExerciseControllerBase.isOK');

  @override
  bool get isOK {
    _$isOKAtom.context.enforceReadPolicy(_$isOKAtom);
    _$isOKAtom.reportObserved();
    return super.isOK;
  }

  @override
  set isOK(bool value) {
    _$isOKAtom.context.conditionallyRunInAction(() {
      super.isOK = value;
      _$isOKAtom.reportChanged();
    }, _$isOKAtom, name: '${_$isOKAtom.name}_set');
  }

  final _$numberKAtom = Atom(name: 'ExerciseControllerBase.numberK');

  @override
  String get numberK {
    _$numberKAtom.context.enforceReadPolicy(_$numberKAtom);
    _$numberKAtom.reportObserved();
    return super.numberK;
  }

  @override
  set numberK(String value) {
    _$numberKAtom.context.conditionallyRunInAction(() {
      super.numberK = value;
      _$numberKAtom.reportChanged();
    }, _$numberKAtom, name: '${_$numberKAtom.name}_set');
  }

  final _$enabledButtonAtom =
      Atom(name: 'ExerciseControllerBase.enabledButton');

  @override
  bool get enabledButton {
    _$enabledButtonAtom.context.enforceReadPolicy(_$enabledButtonAtom);
    _$enabledButtonAtom.reportObserved();
    return super.enabledButton;
  }

  @override
  set enabledButton(bool value) {
    _$enabledButtonAtom.context.conditionallyRunInAction(() {
      super.enabledButton = value;
      _$enabledButtonAtom.reportChanged();
    }, _$enabledButtonAtom, name: '${_$enabledButtonAtom.name}_set');
  }

  final _$listNumbersAtom = Atom(name: 'ExerciseControllerBase.listNumbers');

  @override
  ObservableList<int> get listNumbers {
    _$listNumbersAtom.context.enforceReadPolicy(_$listNumbersAtom);
    _$listNumbersAtom.reportObserved();
    return super.listNumbers;
  }

  @override
  set listNumbers(ObservableList<int> value) {
    _$listNumbersAtom.context.conditionallyRunInAction(() {
      super.listNumbers = value;
      _$listNumbersAtom.reportChanged();
    }, _$listNumbersAtom, name: '${_$listNumbersAtom.name}_set');
  }

  final _$ExerciseControllerBaseActionController =
      ActionController(name: 'ExerciseControllerBase');

  @override
  dynamic onChangedNumber(String value) {
    final _$actionInfo = _$ExerciseControllerBaseActionController.startAction();
    try {
      return super.onChangedNumber(value);
    } finally {
      _$ExerciseControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic sendNumber() {
    final _$actionInfo = _$ExerciseControllerBaseActionController.startAction();
    try {
      return super.sendNumber();
    } finally {
      _$ExerciseControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onChangedNumberK(String value) {
    final _$actionInfo = _$ExerciseControllerBaseActionController.startAction();
    try {
      return super.onChangedNumberK(value);
    } finally {
      _$ExerciseControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addItemList() {
    final _$actionInfo = _$ExerciseControllerBaseActionController.startAction();
    try {
      return super.addItemList();
    } finally {
      _$ExerciseControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic clear() {
    final _$actionInfo = _$ExerciseControllerBaseActionController.startAction();
    try {
      return super.clear();
    } finally {
      _$ExerciseControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
