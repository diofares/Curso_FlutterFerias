import 'package:aula_firebase/autenticacao.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'cadastro.dart';
import 'autenticacao.dart';
import 'projetos.dart';

class TelaPrincipal extends StatefulWidget{
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      body: StreamBuilder<User?>(//o <User?> é o tipo de dado que a StreamBuilder vai escutar
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting){ //a tela que vai ser mostrada enquanto carrega o app
            return Center(child: Text('Carregando...'));
          }

          User? usuario = snapshot.data; //se não existir o cadastro, se ele for nulo
          if (usuario == null){
            return TelaAutenticacao();
          }else{
            return TelaProjetos(); //a tela quando o usuário entra com o login
          }
        },
      )
     ),
  );
  }
}