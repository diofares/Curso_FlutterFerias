import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});

  final Map<String, List<String>> dados = {
    'Sobremesas': [
      'Torta de Maçã',
      'Mousse de Chocolate',
      'Pudim de Leite Condensado'
    ],

    'Pratos Principais': [
      'Frango Assado com Batatas',
      'Espaguete a bolonesa',
      'Risoto de cogumelo'
    ],

    'Aperitivos': [
      'Bolinho de Queijo',
      'Brusqueta de Tomate e Manjeiricão',
      'Canapés de Salmão com Cream Cheese'
    ],
  };

  final String? categoriaUsuario = null;
  final String busca = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Minhas Receitas", style: TextStyle(color: Colors.black87, fontSize: 20,)), backgroundColor: Colors.deepOrange,),
        
        body: Column(children: dados.entries
          .map((categoria) {
            if (categoriaUsuario == null || categoriaUsuario == categoria.key){
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                if(busca.isEmpty) 
                  Center(child: Text(categoria.key, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),),),
                for (String prato in categoria.value)
                 if(prato.contains(busca) || busca.isEmpty)
                  Text(prato, style: const TextStyle(fontSize: 18,),)
                ],
              );
            }
           else{
            return Container();
          }
  }).toList())),
        );
  }
}
