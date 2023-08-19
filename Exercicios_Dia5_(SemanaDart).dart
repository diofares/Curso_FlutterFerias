void main() {
  q1();
  q2();
}

void q1() async {
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 3),);
    return "Dados obtidos";
  }
  print("Iniciando a requisição, aguarde um pouco...");
  String dados = await fetchData();
  print('$dados, Sua requisição foi concluída com sucesso!');
}


void q2() async {
  Future<void> countDown(int valorMaximo) async {
    for (int cont = valorMaximo; cont >= 1; cont--) {
      await Future.delayed(Duration(seconds: 1));
      print(cont);
    }
  }
  print("O laçamento do foguete começará em...");
  await countDown(5);
  print("Lançamento autorizado!");
}
