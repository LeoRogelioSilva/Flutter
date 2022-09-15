import 'package:e_forms_intro/screens/tela_leo.dart';
import 'package:e_forms_intro/screens/tela_bruno.dart';
import 'package:e_forms_intro/screens/formulario.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula 04',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
              appBar: AppBar(
                bottom: const TabBar(tabs: [
                  Tab(icon: Icon(Icons.account_circle_outlined)),
                  Tab(icon: Icon(Icons.account_circle_outlined)),
                  Tab(icon: Icon(Icons.aod_outlined)),
                ]),
                title: const Text("Aula 04"),
              ),
              body: const TabBarView(
                children: [
                  CompleteForm(),
                  LeoScreen(),
                  BrunoScreen(),
                ],
              ))),
    );
  }
}
