import 'package:flutter/material.dart';
import 'package:e_forms_intro/model/user.dart';
import 'package:email_validator/email_validator.dart';

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
                hintText: 'Email',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Insira seu email';
                }
                if (!EmailValidator.validate(value)) {
                  return 'Email inválido!';
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
                              "Bem Vindo ${_newUser.toString()}!\nSeu e-mail é  ${_newUser.email.toString()}"),
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
