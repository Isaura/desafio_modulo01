import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(List<int> idades) {
  //se não tiver de maior dá erro

  // int idade = 0;
  // List<int> idadeAux = [];

  // idades.sort();

  // for (var i = 0; i < idades.length; i++) {
  //   if (idades[i] == 18) {
  //     idade = idades[i];
  //   } else if (idades[i] > 18) {
  //     idadeAux.add(idades[i]);
  //     // } else {
  //     //   print('Cresça e apareça');
  //   }
  // }
  // idadeAux.sort();

  // if (idade == 0) {
  //   print('${idadeAux.first}');
  // } else {
  //   print('$idade');
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
