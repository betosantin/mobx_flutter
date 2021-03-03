// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listItemStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListItemStore on _ListItemSt, Store {
  final _$doneAtom = Atom(name: '_ListItemSt.done');

  @override
  bool get done {
    _$doneAtom.reportRead();
    return super.done;
  }

  @override
  set done(bool value) {
    _$doneAtom.reportWrite(value, super.done, () {
      super.done = value;
    });
  }

  final _$_ListItemStActionController = ActionController(name: '_ListItemSt');

  @override
  void toggleDone() {
    final _$actionInfo = _$_ListItemStActionController.startAction(
        name: '_ListItemSt.toggleDone');
    try {
      return super.toggleDone();
    } finally {
      _$_ListItemStActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
done: ${done}
    ''';
  }
}
