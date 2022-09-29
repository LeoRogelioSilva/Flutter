import 'package:trabalho01/screens/tela_login.dart';
import 'package:flutter/material.dart';
import 'package:trabalho01/screens/tela_monta_dieta.dart';

void main() => runApp(const MyApp());

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
        length: 2,
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
            ],
          ),
        ),
      ),
    );
  }
}
