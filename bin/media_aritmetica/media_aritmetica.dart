import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(String nome, List<double> cofre) {
  double acumulado = 0;
  double media = 0;

  for (var i = 0; i < cofre.length; i++) {
    acumulado = acumulado + cofre[i];
  }

  media = acumulado / cofre.length;

  print('$nome ja tem R\$ ${acumulado.toStringAsFixed(2)} guardados!');
  print('A media dos depesitos e de R\$ ${media.toStringAsFixed(2)} por mes.');
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');
  solucao(inputs[0], inputs.sublist(1).map(double.parse).toList());
}
