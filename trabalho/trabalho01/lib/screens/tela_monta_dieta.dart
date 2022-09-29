import 'package:flutter/material.dart';
import 'package:trabalho01/model/user.dart';
import 'package:email_validator/email_validator.dart';

class MontaDieta extends StatefulWidget {
  const MontaDieta({super.key});

  @override
  State<MontaDieta> createState() => CompleteFormState();
}

final titles = ["Opção 1", "Opção 2", "Opção 3"];
final subtitles = ["Testosterona", "Trembolona", "Azulzinho"];
final icons = [
  Icons.sports_gymnastics,
  Icons.sports_gymnastics,
  Icons.sports_gymnastics
];

//aaaaaaaaa
class CompleteFormState extends State<MontaDieta> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final User _newUser = User();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
                  title: Text(titles[index]),
                  subtitle: Text(subtitles[index]),
                  leading: CircleAvatar(
                      child: Image.asset(
                    'assets/images/arnold.jpg',
                    width: 200,
                  )),
                  trailing: Icon(icons[index])));
        });
  }
}
