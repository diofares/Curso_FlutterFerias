import 'package:flutter/material.dart';


class JogodaVelhaTela extends StatefulWidget{
  const JogodaVelhaTela({super.key});

  @override
  State<JogodaVelhaTela> createState() => _JogodaVelhaTelaState();
}


class _JogodaVelhaTelaState extends State<JogodaVelhaTela> {
  List<int> firstLine = [0,0,0];
  List<int> secondLine = [0,0,0];
  List<int> thirstLine = [0,0,0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                for (int i = 0; i < firstLine.length; i++)
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.red,
                  margin: const EdgeInsets.all(5),
                  
                ),
              ],

            ),
            Row(
              children: [
                for (int i = 0; i < secondLine.length; i++)
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.red,
                  margin: const EdgeInsets.all(5),
                ),
              ],

            ),
            Row(
              children: [
                for (int i = 0; i < thirstLine.length; i++)
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.red,
                  margin: const EdgeInsets.all(5),
                ),
              ],

            ),
          ],  
        ),
      ),
    );
  }
}

