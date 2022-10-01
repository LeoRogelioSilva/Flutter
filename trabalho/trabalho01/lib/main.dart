<<<<<<< HEAD
// @dart=2.17
import 'package:trabalho01/screens/tela_leo.dart';
import 'package:trabalho01/screens/tela_bruno.dart';
=======
>>>>>>> 2b9e5c7a0d3203f8067f3ccf5ad0de248c712ab1
import 'package:trabalho01/screens/tela_login.dart';
import 'package:flutter/material.dart';
import 'package:trabalho01/screens/tela_monta_dieta.dart';
import 'package:trabalho01/screens/tela_monta_treino.dart';

void main() => runApp(const MyApp());

#jsfjisdnfdskmf

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trabalho 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
<<<<<<< HEAD
        length: 3,
=======
        length: 2,
>>>>>>> 2b9e5c7a0d3203f8067f3ccf5ad0de248c712ab1
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.account_circle_outlined)),
              Tab(icon: Icon(Icons.account_circle_outlined)),
              Tab(icon: Icon(Icons.aod_outlined)),
            ]),
            title: const Text("Trabalho 1"),
          ),
          body: const TabBarView(
            children: [
              LoginScreen(),
              MontaDieta(),
              MontaTreino(),
            ],
          ),
        ),
      ),
    );
  }
}
