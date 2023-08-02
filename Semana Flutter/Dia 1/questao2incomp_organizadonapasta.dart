import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 41, 134, 69),
          title: Center(
          child: Text('Minhas Receitas')),),

        body: Column(
            children: [
            Text('Sobremesas', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),),
        
              Row(children: [
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Torta de Maçã'),
                Text('Mousse de Chocolate'),
                Text('Pudim de Chocolate')
                ]
              )],
              )
            ] 
          ),

                   
        bottomNavigationBar: NavigationBar(backgroundColor: Colors.green, destinations: [Icon(Icons.scatter_plot), Icon(Icons.payment_outlined) ],),
      ), 
    );
  }
}
