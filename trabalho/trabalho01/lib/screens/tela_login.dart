import 'package:flutter/material.dart';
import 'package:trabalho01/model/user.dart';
import 'package:email_validator/email_validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => CompleteFormState();
}

String? _character;

class CompleteFormState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final User _newUser = User();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Form(
        key: _formKey,
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
              validator: (value) {
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
                hintText: 'Senha',
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: Colors.grey,
                ),
              ),
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Insira a Senha!';
                }
                if (value.length < 8) {
                  return 'Senha inválida! Mínimo de caracteres: 8';
                }
                return null;
              },
              onSaved: (value) => _newUser.senha = value,
            ),
            ListTile(
              title: const Text('Masculino'),
              leading: Radio<String>(
                value: "masculino",
                groupValue: _character,
                onChanged: (value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Feminino'),
              leading: Radio<String>(
                value: "feminino",
                groupValue: _character,
                onChanged: (value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(children: [
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.green,
                          duration: const Duration(seconds: 10),
                          content: Text(
                              "Bem vindo, ${_newUser.toString()}!\nSeu sexo é  ${_character.toString().characters}"),
                          action: SnackBarAction(
                              label: "HomePage",
                              onPressed: () {
                                //vai pra tela inicial
                              }),
                        ),
                      );
                    }
                  },
                  child: const Text('Enviar'),
                ),
                //    ElevatedButton(
                //    onPressed: () {
                //       //vai pra pagina de cadastro
                //    },
                //   child: const Text('Cadastrar'),
                //   ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
