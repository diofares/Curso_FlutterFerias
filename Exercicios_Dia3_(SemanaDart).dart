import'dart:math';
import'dart:io';

void main() {
  q2();  
}

void q1(){
  print('Seu avião vai decolar em:');
  for (int i = 10; i >= 1; --i) {
    print('$i');
  }
}

void q2() {
  Random aleat = Random();
  int randomNumber = aleat.nextInt(10) + 1;
  int tentativas = 3;

  print('Entre 1 a 10, qual é o número secreto?');

  while (tentativas > 0) {
    stdout.write("Tentativa $tentativas: ");
    int numUsuario = int.parse(stdin.readLineSync()!);

    if (numUsuario == randomNumber) {
      print("Isso aí! Você acertou!");
      return;
    } else if (numUsuario > randomNumber) {
      print("Quase isso, mas o número secreto é menor que $numUsuario.");
    } else {
      print("Quase isso, mas o número secreto é maior que $numUsuario.");
    }

    tentativas--;
  }

  print("Suas tentativas acabaram. O número secreto era: $randomNumber.");
}

void q3(){
  List<int> listPrecos = [];
  print("Qual seria o maior preço entre os produtos? ");
  int precoMaximo = int.parse(stdin.readLineSync()!);
  int count = 0;

  while(count <= precoMaximo) {
    if(count % 2== 0){
      listPrecos.add(count);
    }

    count++;
  }

  print('aqui está a lista de preços dos produtos: $listPrecos');
}

void q5(){
  print('Qual é o valor do produto?');
  double produtoPreco = double.parse(stdin.readLineSync()!);

  var desconto = (produtoPreco) => (produtoPreco - (produtoPreco * 0.10));
  print('O valor do produto com desconto é:' + desconto(produtoPreco).toString());
}
