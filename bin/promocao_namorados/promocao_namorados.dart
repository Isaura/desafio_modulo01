import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(List<double> carrinhoCompras) {
  double menorValor = 0;
  double somaCarrinho = 0;
  double valorTotal = 0;
  int index = 0;

  if (carrinhoCompras.length > 100) {
    print('Carrinho cheio');
  } else if (carrinhoCompras.length >= 3) {
    carrinhoCompras.sort();
    menorValor = carrinhoCompras.first * (50 / 100);
    index = 1;
  }

  for (var i = index; i < carrinhoCompras.length; i++) {
    somaCarrinho += carrinhoCompras[i];
  }

  valorTotal = menorValor + somaCarrinho;
  print('Total: R\$ ${valorTotal.toStringAsFixed(2)}');
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');

  solucao(inputs.map((element) => double.parse(element)).toList());
}
