import 'package:flutter/material.dart';

class LeoScreen extends StatelessWidget {
  const LeoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            /*
  Maneira clássica de adicionar uma
  borda. Vamos simplesmente circular
  as bordas do container.
  */
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              // Fazendo a borda circular.
              borderRadius: BorderRadius.circular(25),

              // Colocando borda em todos os lados.
              border: Border.all(
                color: Colors.black,
                width: 5.0,
              ),
            ),
            // Arredondando também a imagem.
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/pp.jpg',
                  width: 200,
                )),
          ),
          const Text("Leo Rogelio",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                letterSpacing: 2, // Default is one
              )),
          const Text(
            "MIAAAAAAAAAAAAAAAAAAAAAUUU",
            style: TextStyle(
                fontSize: 10,
                color: Colors.orange,
                letterSpacing: 2,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
