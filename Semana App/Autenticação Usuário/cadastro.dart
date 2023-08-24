import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
String _email = '';
 String _senha = '';
 String? _erroEmail;
 String? _erroSenha;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              TextFormField(
                initialValue: _email,
                onChanged: (texto) => setState(() => _email = texto),
                decoration: InputDecoration(
                  labelText: 'cadastre seu email',
                  errorText: _erroEmail,
 //                 border: OutlineInputBorder(),
                ),
              ),
              
              TextFormField(
                initialValue: _senha,
                onChanged: (texto) => setState(() => _senha = texto),
                decoration: InputDecoration(
                  labelText: 'crie sua senha',
                  errorText: _erroSenha,
 //                 border: OutlineInputBorder(),
                ),
              ),
              
              const SizedBox(height: 10.0),


              MaterialButton(
                padding: const EdgeInsets.all(10),
                color: Colors.blue,
                child: const Text('entrar'),
                onPressed: () async{
                  try{
                    await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: _email,
                      password: _senha,
                    );
                  } on FirebaseAuthException catch (e) {
                    setState(() {
                      String codigo = e.code;
                      if(codigo == 'invalid-email'){
                        _erroEmail = 'Email inválido';
                      } else if (codigo == 'email-already-in-use'){
                        _erroEmail = 'Usuário já existe';
                      }else if(codigo == 'weak-password'){
                        _erroSenha = 'Senha Fraca';
                      }else{
                        _erroEmail = codigo;
                      };
                    });
                    return;
                  }
                  _erroEmail = null;
                  _erroSenha = null;
                },
              ),

            ],    
           ),
        ),
            
          ),
        );

  }
}