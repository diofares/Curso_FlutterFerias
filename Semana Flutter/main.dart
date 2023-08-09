import 'package:flutter/material.dart';
import 'jogo.dart';

void main() {
  runApp(const MaterialApp(title: 'Jogo da Velha', home: MainApp()));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String jogador1 = '';
  String jogador2 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width*0.7,
            height: MediaQuery.of(context).size.height*0.5,
            child: Column(
              children: [
                const Text('Jogo da Velha', 
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold,),),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Digite o nome do Jogador 1',
                    hintText: 'Jogador 1',
                    prefixIcon: Icon(Icons.person),
                  ), 
                  onChanged: (text1) {
                    setState(() {
                      jogador1 = text1;
                    });
                  },
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Digite o nome do Jogador 2',
                    hintText: 'Jogador 2',
                    prefixIcon: Icon(Icons.person),
                  ), 
                  onChanged: (text2) {
                    setState(() {
                      jogador2 = text2;
                    });
                  } ,               
                ),

                const SizedBox(height: 10.0),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => JogodaVelhaTela()),
                    );

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text('Comece o Jogo!'),
                ),
              ],
            ),
          ),
          ),
      );
  }
}
