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
      title: 'Trabaio',
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
            title: const Text("Trabaio"),
          ),
          body: const TabBarView(
            children: [
              LeoScreen(),
              BrunoScreen(),
              CompleteForm(),
            ],
          ),
        ),
      ),
    );
  }
}
