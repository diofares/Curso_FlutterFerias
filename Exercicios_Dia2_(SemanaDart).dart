void main() {
  q1();
  q2();
  q3();
  q4();
  q5();
}

void q1() {
  int Valor1 = 2; //int.parse(stdin.readLineSync()!);
  int Valor2 = 2; //int.parse(stdin.readLineSync()!);
  
  int soma = Valor1 + Valor2;
  int subtracao = Valor2 - Valor1;
  int multiplicacao = Valor1 * Valor2;
  double divisao = Valor1 / Valor2;
  int resto = Valor1 % Valor2;
  
  print('Soma: $soma');
  print('Subtração: $subtracao');
  print('Multiplicação: $multiplicacao');
  print('Divisão: $divisao');
  print('Resto: $resto');
}


void q2(){
  int ValorUsuario = 2;
  
  if(ValorUsuario % 2 == 0){
    print("Esse número é par!");
  }
  else{
    print("Este número é impar!");
  }
}


void q3(){
  int ValorComparar = 11;
  //bool ehIgual = false;
  
  if(ValorComparar >= 200 && ValorComparar < 20){
    //ehIgual = true;
    print('O Valor é Maior/Igual a 10 e Menor que 20');
  }
  else if(ValorComparar == 0 || ValorComparar == 50){
    //ehIgual = true;
    print('O Valor é Igual a 0 ou igual a 50');
  }
  else if(ValorComparar != 100 || ValorComparar == 200){
    //ehIgual = true;
    print('O Valor é diferente de 100 ou igual a 200');
  }
}


void q4(){
  int IdadeUsuario = 17;
  
  if(IdadeUsuario >= 18){
    print("Você é Maior de Idade!");
  }
  else{
    print("Você é Menor de Idade!");
  }
}


void q5(){
  int Dia = 4;
  
  switch(Dia){
    case 1:
    print("Hoje é Segunda-Feira");
    break;
      
    case 2:
    print("Hoje é Terça-Feira");
    break;
      
    case 3:
    print("Hoje é Quarta-Feira");
    break;
      
    case 4:
    print("Hoje é Quinta-Feira");
    break;
      
    case 5:
    print("Hoje é Sexta-Feira");
    break;
  }
}
