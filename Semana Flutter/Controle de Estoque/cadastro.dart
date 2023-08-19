import 'package:flutter/material.dart';

class TelaCadastro extends StatefulWidget{
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  TextEditingController produto= TextEditingController();
  TextEditingController descricao = TextEditingController();
  TextEditingController preco = TextEditingController();
  TextEditingController quantidade = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cadastrando Produto'),
        ),

        body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width*0.7,
            height: MediaQuery.of(context).size.height*0.5,
            child: Column(
              children: [
                Text('Preencha com as informações do seu produto'),
                
                TextField(
                  controller: produto,
                  decoration:  const InputDecoration(
                    labelText: 'Nome do produto',
                    hintText: 'Produto',
                    prefixIcon: Icon(Icons.work)
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
