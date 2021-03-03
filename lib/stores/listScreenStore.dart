import 'package:mobx/mobx.dart';
import 'package:mobxflutter/stores/listItemStore.dart';

part 'listScreenStore.g.dart';

class ListScreenStore = _ListScreenSt with _$ListScreenStore;

abstract class _ListScreenSt with Store {
  @observable
  String search = "";

  @action
  void setSearch(String value) => search = value;

  @computed
  bool get isFormValid => search.isNotEmpty;

  //Já é uma lista observavle não precisa do @observable
  ObservableList<ListItemStore> list = ObservableList<ListItemStore>();

  @action
  void addLista() {
    list.insert(0, ListItemStore(search));
    search = "";
  }
}
