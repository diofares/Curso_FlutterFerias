import 'package:flutter/material.dart';

class TelaCadastro extends StatefulWidget{
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}
class Produto1 {
  String produto;
  String descricao;
  double preco;
  int quantidade;

  Produto1({
      required this.produto,
      required this.descricao,
      required this.preco,
      required this.quantidade
      });
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
          backgroundColor: Colors.black,
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

                  TextField(
                  controller: descricao,
                  decoration:  const InputDecoration(
                    labelText: 'Descrição do produto',
                    hintText: 'Descrição',
                    prefixIcon: Icon(Icons.description)
                  ),
                ),

                  TextField(
                  controller: preco,
                  decoration:  const InputDecoration(
                    labelText: 'Preço',
                    hintText: 'Preço',
                    prefixIcon: Icon(Icons.request_quote)
                  ),
                ),

                TextField(
                  controller: quantidade,
                  decoration:  const InputDecoration(
                    labelText: 'Quantidade',
                    hintText: 'Quantidade',
                    prefixIcon: Icon(Icons.more)
                  ),
                ),

                const SizedBox(height: 10.0),

                ElevatedButton(
                  onPressed: () {
                    Produto1 Produto = Produto1(
                      produto: produto.text,
                      descricao: descricao.text,
                      preco: double.parse(preco.text),
                      quantidade: int.parse(quantidade.text));

            Navigator.of(context).pop(produto);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: const Text('Salvar'),
                ),

              ],
            ),
          ),
        ),
      );
  }
}
