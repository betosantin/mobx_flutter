// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listScreenStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListScreenStore on _ListScreenSt, Store {
  Computed<bool> _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_ListScreenSt.isFormValid'))
          .value;

  final _$searchAtom = Atom(name: '_ListScreenSt.search');

  @override
  String get search {
    _$searchAtom.reportRead();
    return super.search;
  }

  @override
  set search(String value) {
    _$searchAtom.reportWrite(value, super.search, () {
      super.search = value;
    });
  }

  final _$_ListScreenStActionController =
      ActionController(name: '_ListScreenSt');

  @override
  void setSearch(String value) {
    final _$actionInfo = _$_ListScreenStActionController.startAction(
        name: '_ListScreenSt.setSearch');
    try {
      return super.setSearch(value);
    } finally {
      _$_ListScreenStActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addLista() {
    final _$actionInfo = _$_ListScreenStActionController.startAction(
        name: '_ListScreenSt.addLista');
    try {
      return super.addLista();
    } finally {
      _$_ListScreenStActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
search: ${search},
isFormValid: ${isFormValid}
    ''';
  }
}
