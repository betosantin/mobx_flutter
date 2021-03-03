import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobxflutter/stores/listItemStore.dart';
import 'package:mobxflutter/stores/listScreenStore.dart';
import 'package:mobxflutter/stores/loginStore.dart';
import 'package:mobxflutter/widgets/custom_icon_button.dart';
import 'package:mobxflutter/widgets/custom_text_field.dart';
import 'package:provider/provider.dart';

import 'login_screen.dart';

class ListScreen extends StatefulWidget {

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {

  ListScreenStore listStore = ListScreenStore();

  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: const EdgeInsets.fromLTRB(32, 0, 32, 32),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Tarefas',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 32
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.exit_to_app),
                      color: Colors.white,
                      onPressed: (){
                        Provider.of<LoginStore>(context, listen: false).logout();
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context)=>LoginScreen())
                        );
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 16,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: <Widget>[
                        Observer(builder: (_) {
                          return CustomTextField(
                            hint: 'Tarefa',
                            controller: textController,
                            onChanged: listStore.setSearch,
                            suffix: listStore.isFormValid ? CustomIconButton(
                              radius: 32,
                              iconData: Icons.add,
                              onTap: (){
                                listStore.addLista();
                                textController.clear();
                              },
                            ) : null,
                          );
                        }),
                        const SizedBox(height: 8,),
                        Expanded(
                          child: Observer(builder: (_){
                            return ListView.separated(
                              itemCount: listStore.list.length,
                              itemBuilder: (_, index){
                                ListItemStore item = listStore.list[index];

                                return Observer(builder: (_){
                                  return ListTile(
                                    title: Text(
                                      item.texto,
                                      style: TextStyle(
                                        decoration: item.done ? TextDecoration.lineThrough : null,
                                        color: item.done ? Colors.grey : Colors.black
                                      ),
                                    ),
                                    onTap: item.toggleDone,
                                  );
                                });
                              },
                              separatorBuilder: (_, __){
                                return Divider();
                              },
                            );
                          },),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}