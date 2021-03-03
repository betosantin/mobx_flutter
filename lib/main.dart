import 'package:flutter/material.dart';
import 'package:mobxflutter/stores/loginStore.dart';
import 'package:provider/provider.dart';

import 'screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Provider<LoginStore>(
      create: (_) => LoginStore(),
      //dispose: (_, store) => store.dispose,//Caso eu tenha um dispose especifico posso utilizar aqui
      child: MaterialApp(
        title: 'MobX Tutorial',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.deepPurpleAccent,
          cursorColor: Colors.deepPurpleAccent,
          scaffoldBackgroundColor: Colors.deepPurpleAccent,
        ),
        home: LoginScreen(),
      ),
    );
  }
}
