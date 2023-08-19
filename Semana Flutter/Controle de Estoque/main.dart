import 'package:flutter/material.dart';
import 'cadastro.dart';

void main() {
  runApp( MaterialApp( home: MainApp()),);
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

List<Produto1> listprodutos = [];

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Meus Produtos", style: TextStyle(color: Colors.white, fontSize: 20,)),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              icon: Icon(Icons.equalizer),
              onPressed: () {},
            )]
        ),
        
        body: ListView.builder(
        itemCount: listprodutos.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Text(listprodutos[index].produto),
                Text(listprodutos[index].descricao),
                Text(listprodutos[index].preco.toString()),
                Text(listprodutos[index].quantidade.toString()),
              ],
            ),
          );
        }
      ), 
        
        floatingActionButton: FloatingActionButton(onPressed: () async {
          Produto1 produtoResult = await Navigator.push(
              context, MaterialPageRoute(builder: (context) => const TelaCadastro()));

          setState(() {
            listprodutos.add(produtoResult);
          });
         },
        child: const Icon(Icons.add), backgroundColor: Colors.black,),
      );
  }
}
