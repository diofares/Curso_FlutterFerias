import 'dart:io';
  
abstract class Veiculo{
  String marca;
  String modelo;
  int anoFabricacao;
  int precoBase;
  
  
  Veiculo({
    required this.marca,
    required this.modelo,
    required this.anoFabricacao,
    required this.precoBase,
  });
 
  void informacoes(){
    print('\n__________________informações________________________\n');
    print('Essa é a marca do seu veiculo: ${marca.toUpperCase()}');
    print('Essa é o modelo do seu veiculo: ${modelo.toUpperCase()}');
    print('Essa é o ano de fabricação do seu veiculo: $anoFabricacao');
  }
}

class Carro extends Veiculo{
  int qntPorta;
  int kms;

  Carro({
    required super.marca,
    required super.modelo,
    required super.anoFabricacao,
    required this.qntPorta,
    required super.precoBase,
    required this.kms,
  });
  
  @override 
  void informacoes(){
    super.informacoes();
    print('seu carro tem $qntPorta portas');
    print('Ele tem $kms rodaddos');
  }

    void calcAdesivo(){
    if(kms < 15000){
      print('Sua carro é considerado SEMINOVO!');
    }
    else if(kms >= 15000 && kms <= 20000){
      print('Sua carro é considerado USADO!');
    }
    else{
      print('Sua carro é considerado ANTIGO!');
    };
  }

  void calcularPreco() {
    double precoCarro = (qntPorta * 1000) + (kms * 0.01);
    print('Seu carro está custando: ${precoBase + precoCarro}');
  }
}

class Moto extends Veiculo{
  int cilindrada;
  bool partidaEletrica;
  

  Moto({
    required super.marca,
    required super.modelo,
    required super.anoFabricacao,
    required super.precoBase,
    required this.cilindrada,
    required this.partidaEletrica,
    
  });
  
  @override 
  void informacoes(){
    super.informacoes();
    print('seu veiculo tem $cilindrada cilindradas');
    print('Ele tem partida eletrica: $partidaEletrica');
  }

  void calcAdesivo(){
    if(cilindrada < 125){
      print('Sua moto é considerada leve!');
    }
    else if(cilindrada >= 125 && cilindrada <= 500){
      print('Sua moto é considerada leve!');
    }
    else{
      print('Sua moto é considerada pesada!');
    };
  }
  
 void calcularPreco() {
    double precoMoto = cilindrada * 0.05;
    if (partidaEletrica) {
      precoMoto += 500;
    }

    print('Sua moto está custando: ${precoBase + precoMoto}');
  }
   
}

  
 void main(){
   print('Qual a marca do seu carro?');
   String marca = stdin.readLineSync()!;
   print('Qual o modelo do seu carro?');
   String modelo = stdin.readLineSync()!;
   print('Qual o ano de Fabricação do seu carro?');
   int anoFabricacao = int.parse(stdin.readLineSync()!);
   print('Quantas portas tem o seu carro seu carro?');
   int qntPorta = int.parse(stdin.readLineSync()!);
   print('Quantos kms tem o seu carro seu carro?');
   int kms = int.parse(stdin.readLineSync()!);
   print('Qual seria o preço base do seu carro?');
   int precoBaseCarro = int.parse(stdin.readLineSync()!);

   // print('Qual a marca da sua moto?');
   // String marcaMoto = stdin.readLineSync()!;
   // print('Qual o modelo da sua moto?');
   // String modeloMoto = stdin.readLineSync()!;
   // print('Qual o ano de Fabricação da sua Moto?');
   // int anoFabricacaoMoto = int.parse(stdin.readLineSync()!);
   // print('Quantas cilindradas tem a sua moto?');
   // int cilindradaMoto = int.parse(stdin.readLineSync()!);
   // print('Ela possui partida elétrica? Sim ou Não');
   // String partidaEletricaMoto = stdin.readLineSync()!;
   // print('Qual seria o preço base da sua moto?');
   // int precoBaseMoto = int.parse(stdin.readLineSync()!);

   // bool PartEletrica(PartidaEletricaMoto){
   //   if(PartidaEletricaMoto == 'Sim'){
   //     return true;
   //   }
   //    else { return false;}
   // }

   
   Carro car = Carro(marca: marca, modelo: modelo, anoFabricacao: anoFabricacao, qntPorta: qntPorta, kms: kms, precoBase: precoBaseCarro);
   
   // Moto mot = Moto(marca: marcaMoto, modelo: modeloMoto, anoFabricacao: anoFabricacaoMoto, cilindrada:cilindradaMoto, partidaEletrica: PartEletrica(partidaEletricaMoto), precoBase: precoBaseMoto);
   
   
   // mot.informacoes();
   // mot.calcAdesivo();
   // mot.calcularPreco();
   car.informacoes();
   car.calcAdesivo();
   car.calcularPreco();
 }
