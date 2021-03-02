// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginSt, Store {
  Computed<bool> _$isEmailValidComputed;

  @override
  bool get isEmailValid =>
      (_$isEmailValidComputed ??= Computed<bool>(() => super.isEmailValid,
              name: '_LoginSt.isEmailValid'))
          .value;
  Computed<bool> _$isSenhaValidComputed;

  @override
  bool get isSenhaValid =>
      (_$isSenhaValidComputed ??= Computed<bool>(() => super.isSenhaValid,
              name: '_LoginSt.isSenhaValid'))
          .value;
  Computed<bool> _$isFormValidComputed;

  @override
  bool get isFormValid => (_$isFormValidComputed ??=
          Computed<bool>(() => super.isFormValid, name: '_LoginSt.isFormValid'))
      .value;

  final _$emailAtom = Atom(name: '_LoginSt.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$senhaAtom = Atom(name: '_LoginSt.senha');

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  final _$senhaVisivelAtom = Atom(name: '_LoginSt.senhaVisivel');

  @override
  bool get senhaVisivel {
    _$senhaVisivelAtom.reportRead();
    return super.senhaVisivel;
  }

  @override
  set senhaVisivel(bool value) {
    _$senhaVisivelAtom.reportWrite(value, super.senhaVisivel, () {
      super.senhaVisivel = value;
    });
  }

  final _$_LoginStActionController = ActionController(name: '_LoginSt');

  @override
  void setEmail(String value) {
    final _$actionInfo =
        _$_LoginStActionController.startAction(name: '_LoginSt.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_LoginStActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(String value) {
    final _$actionInfo =
        _$_LoginStActionController.startAction(name: '_LoginSt.setSenha');
    try {
      return super.setSenha(value);
    } finally {
      _$_LoginStActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleSenhaVisible() {
    final _$actionInfo = _$_LoginStActionController.startAction(
        name: '_LoginSt.toggleSenhaVisible');
    try {
      return super.toggleSenhaVisible();
    } finally {
      _$_LoginStActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
senha: ${senha},
senhaVisivel: ${senhaVisivel},
isEmailValid: ${isEmailValid},
isSenhaValid: ${isSenhaValid},
isFormValid: ${isFormValid}
    ''';
  }
}
