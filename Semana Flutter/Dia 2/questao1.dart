//ainda incompleto

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
          child: Text('Minhas Receitas')),
          ),

        body: Container(
            padding: EdgeInsets.all(2.0),
            color: Colors.red,
            alignment: Alignment.center,
            //transform: Matrix4.rotationZ(0.1),
            child: Text('Fala dele', style: TextStyle(color: Colors.black,),)
          ),
        )
                   
        //bottomNavigationBar: NavigationBar(backgroundColor: Colors.green, destinations: [Icon(Icons.scatter_plot), Icon(Icons.payment_outlined) ],),
      //), 
    );
    
  }
}
