import 'package:aula_firebase/autenticacao.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'cadastro.dart';
import 'autenticacao.dart';

class TelaProjetos extends StatelessWidget{
  const TelaProjetos({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text('Meus Projetos'),
            MaterialButton(
              color: Colors.red,
              child: Text('sair'),
              onPressed: () async{
                await FirebaseAuth.instance.signOut();
              },
            )
          ],
        )
      ),
    );
  }
}
