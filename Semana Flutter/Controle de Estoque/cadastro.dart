import 'package:flutter/material.dart';

class TelaCadastro extends StatefulWidget{
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  TextEditingController Nome = TextEditingController();
  TextEditingController Descricao = TextEditingController();
  TextEditingController Preco = TextEditingController();
  TextEditingController Quantidade = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cadastrando Produto'),
        ),

        body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width*0.7,
            height: MediaQuery.of(context).size.height*0.5,
            child: Column(
              children: [
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
