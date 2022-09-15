import 'package:e_forms_intro/model/login_data.dart';
import 'package:flutter/material.dart';
import 'package:e_forms_intro/model/user.dart';

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
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Login',
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
                      action: SnackBarAction(label: "Home", onPressed: () {})));
                }
              },
              child: const Text('Enviar'),
            ),
          ),
        ],
      ),
    );
  }

  String getUser() {
    return _newUser.toString();
  }
}
