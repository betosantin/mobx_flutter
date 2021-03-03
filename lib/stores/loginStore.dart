
import 'package:mobx/mobx.dart';

part 'loginStore.g.dart';

class LoginStore = _LoginSt with _$LoginStore;

abstract class _LoginSt with Store {

  _LoginSt(){
//    autorun((_){
//      print(isFormValid);
//    });
  }

  @observable
  String email = "";

  @action
  void setEmail(String value) => email = value;

  @observable
  String senha = "";

  @action
  void setSenha(String value) => senha = value;

  @computed
  bool get isEmailValid => RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);

  @computed
  bool get isSenhaValid => senha.length >= 6;

  @computed
  bool get isFormValid => isEmailValid && isSenhaValid;

  @observable
  bool senhaVisivel = false;

  @action
  void toggleSenhaVisible() => senhaVisivel = !senhaVisivel;

  @observable
  bool loading = false;

  @observable
  bool loggedIn = false;

  @action
  Future<void> login() async {
    loading = true;

    //processar
    await Future.delayed(Duration(seconds: 2), (){});


    loading = false;
    loggedIn = true;

    email = "";
    senha = "";
  }

  @computed
  Function get loginPressed => (isEmailValid && isSenhaValid && !loading) ? login : null;

  @action
  void logout(){
    loggedIn = false;
  }
}