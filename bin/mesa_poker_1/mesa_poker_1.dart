import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(num valorMinimo, num valorMaximo, List jogadores) {
  //seu codigo
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');
  List jogadores = [];
  for (int i = 2; i < inputs.length; i++) {
    Map<String, dynamic> jogador = {};
    jogador["nome"] = inputs[i];
    jogador["valor"] = int.parse(inputs[++i]);
    jogadores.add(jogador);
  }
  solucao(double.parse(inputs[0]), double.parse(inputs[1]), jogadores);
}
