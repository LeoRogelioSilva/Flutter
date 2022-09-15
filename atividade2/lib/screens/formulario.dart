import 'package:e_forms_intro/model/login_data.dart';
import 'package:flutter/material.dart';
import 'package:e_forms_intro/model/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class CompleteForm extends StatefulWidget {
  const CompleteForm({super.key});

  @override
  State<CompleteForm> createState() => CompleteFormState();
}

class CompleteFormState extends State<CompleteForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final User _newUser = User();

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _formKey,
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300]!,
            blurRadius: 6,
            spreadRadius: 2,
            offset: const Offset(0.2, 0.3),
          )
        ],
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[200],
      ),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Login',
                focusColor: Colors.white,
                //add prefix icon
                prefixIcon: Icon(
                  Icons.person_outline_rounded,
                  color: Colors.grey,
                ),
                fillColor: Colors.grey,
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontFamily: "verdana_regular",
                  fontWeight: FontWeight.w400,
                ),
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Insira seu login';
                }
                return null;
              },
              onSaved: (value) => _newUser.nome = value,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Insira seu email';
                }
                return null;
              },
              onSaved: (value) => _newUser.email = value,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Senha',
              ),
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              onSaved: (value) => _newUser.senha = value,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.green,
                        duration: const Duration(seconds: 5),
                        content: Text("Bem Vindo ${_newUser.toString()}!"),
                        action:
                            SnackBarAction(label: "Home", onPressed: () {})));
                  }
                },
                child: const Text('Enviar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
