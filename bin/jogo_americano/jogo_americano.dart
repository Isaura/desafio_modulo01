import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(List jogadores) {
  int resultado = 0;
  String goleiro = '';

  for (var i = 0; i < jogadores.length; i++) {
    resultado += int.parse(jogadores[i]["numero"].toString());
  }
  print('Resultado: $resultado');

  if (resultado <= jogadores.length) {
    for (var i = 0; i < jogadores.length; i++) {
      goleiro = jogadores[i]['nome'];
    }
  } else {
    for (int i = 0; i < jogadores.length; i++) {
      goleiro = jogadores[i]['nome'];
    }
    int diferenca = resultado % jogadores.length;
    for (int i = 0; i < diferenca; i++) {
      goleiro = jogadores[i]['nome'];
    }
  }
  print('Goleiro(a): $goleiro');
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
