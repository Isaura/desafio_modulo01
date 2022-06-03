import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(double minuto, double km) {
  double valorKm = 0;
  double valorKmAdicional = 0;
  double valorMin = 0;
  double valorMinAdicional = 0;
  double valorAPagar = 0;

  if (km > 10) {
    valorKm = 10 * 0.70;
    valorKmAdicional = (km - 10) * 0.50;
  } else {
    valorKm = km * 0.70;
  }
  if (minuto > 20) {
    valorMin = 20 * 0.50;
    valorMinAdicional = (minuto - 20) * 0.30;
  } else {
    valorMin = minuto * 0.50;
  }
  valorAPagar = valorKm + valorMin + valorKmAdicional + valorMinAdicional;

  print('Total a pagar: R\$ ${valorAPagar.toStringAsFixed(2)}');
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');

  solucao(double.parse(inputs[0]), double.parse(inputs[1]));
}
