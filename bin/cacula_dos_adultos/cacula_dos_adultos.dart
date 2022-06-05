import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(List<int> idades) {
  bool maiorIdade = false;
  List<int> idadeAux = [];

  idades.sort();

  for (var i = 0; i < idades.length; i++) {
    if (idades[i] >= 18) {
      idadeAux.add(idades[i]);
      maiorIdade = true;
    } else {
      maiorIdade = false;
    }
  }
  if (maiorIdade) {
    print('${idadeAux.first}');
  } else {
    print('Cresca e apareca');
  }
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
