import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(List jogadores) {
  num resultado = 0;
  for (var i = 0; i < jogadores.length; i++) {
    resultado = resultado + jogadores[i]["numero"];
  }
  print('Resultado: $resultado');

  for (var j = 1; j < resultado; j++) {
    while (resultado > jogadores.length) {}
    for (var i = 0; i < jogadores.length; i++) {}
  }
  print('Goleiro(a): Carina');
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');

  List jogadores = [];
  for (int i = 0; i < inputs.length; i++) {
    Map<String, dynamic> jogador = {
      "nome": inputs[i],
      "numero": int.parse(inputs[i + 1])
    };
    jogadores.add(jogador);
    i++;
  }

  solucao(jogadores);
}
