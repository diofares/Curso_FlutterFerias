import 'package:flutter/material.dart';
import 'cadastro.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Meus Produtos", style: TextStyle(color: Colors.white, fontSize: 20,)),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              icon: Icon(Icons.equalizer),
              onPressed: () {},
            )]
        ),
        body: const Center(
          child: Text(''),
        ),
        
        floatingActionButton: FloatingActionButton(onPressed: () { 
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TelaCadastro()),
          );
         },
        child: const Icon(Icons.add), backgroundColor: Colors.black,),
      ),
    );
  }
}
