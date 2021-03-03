import 'package:mobx/mobx.dart';

part 'listItemStore.g.dart';

class ListItemStore = _ListItemSt with _$ListItemStore;

abstract class _ListItemSt with Store {

  _ListItemSt(this.texto);

  String texto;

  @observable
  bool done = false;

  @action
  void toggleDone() => done = !done;

}