import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';
import 'cadastro.dart';


class TelaAutenticacao extends StatefulWidget {
  const TelaAutenticacao({super.key});

  @override
  State<TelaAutenticacao> createState() => _TelaAutenticacaoState();
}

class _TelaAutenticacaoState extends State<TelaAutenticacao> {
String _email = '';
 String _senha = '';
 String? _erroEmail;
 String? _erroSenha;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width*0.7,
            height: MediaQuery.of(context).size.height*0.5,
            child: Column(
            children: [
              TextFormField(
                initialValue: _email,
                onChanged: (texto) => setState(() => _email = texto),
                decoration: InputDecoration(
                  labelText: 'Email',
                  errorText: _erroEmail,
 //                 border: OutlineInputBorder(),
                ),
              ),
              
              TextFormField(
                initialValue: _senha,
                onChanged: (texto) => setState(() => _senha = texto),
                decoration: InputDecoration(
                  labelText: 'Senha',
                  errorText: _erroSenha,
 //                 border: OutlineInputBorder(),
                ),
              ),
              
              const SizedBox(height: 10.0),


              Row(
                children: [
                  MaterialButton(
                    padding: const EdgeInsets.all(10),
                    color: Colors.blue,
                    child: const Text('Entrar'),
                    onPressed: () async{
                      try{
                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: _email,
                          password: _senha,
                        );
                      } on FirebaseAuthException catch (e) {
                        setState(() {
                          String codigo = e.code;
                          if(codigo == 'invalid-email'){
                            _erroEmail = 'Email inválido';
                          } else if (codigo == 'user-disabled'){
                            _erroEmail = 'Usuário desabilitado';
                          }else if (codigo == 'user-not-found'){
                            _erroEmail = 'Usuário não encontradrado';
                          }else if(codigo == 'wrong-password'){
                            _erroSenha = 'Senha Inválida';
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

                  const SizedBox(width: 10.0),


                MaterialButton(
                    padding: const EdgeInsets.all(10),
                    color: Colors.blue,
                    child: const Text('Crie sua conta'),
                    onPressed: () {
                      Navigator.push(
                          context, // O BuildContext da tela atual
                          MaterialPageRoute(builder: (context) => TelaCadastro()),
                       ); setState(() {}); }
                    ),

                ],
              ),

            ],    
           ),
        ),
            
          ),
          ),
        );

  }
}