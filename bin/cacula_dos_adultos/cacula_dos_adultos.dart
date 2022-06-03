import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(List<int> idades) {
  idades.sort();

  // print('${idades}');
  // for (var i = 0; i < idades.length; i++) {
  //   int valor = idades[i];
  //   if (idades[i] == 18) {
  //     print('${idades[i]}');
  //   } else {
  //     print('Cresça e apareça');
  //   }
  // }
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');
  solucao(inputs.map((s) => int.parse(s)).toList());
}
