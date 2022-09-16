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
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: Colors.black,
                width: 5.0,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/pp.jpg',
                width: 200,
              ),
            ),
          ),
          const Text("Leo Rogelio",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                letterSpacing: 2, // Default is one
              )),
          const Text(
            "",
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
