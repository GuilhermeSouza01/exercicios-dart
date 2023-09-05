import 'package:exercicio_imc/classes/Pessoa.dart';
import 'package:exercicio_imc/exercicio_imc.dart' as exercicio_imc;
import 'dart:io';
import 'dart:convert';

void main(List<String> arguments) {
  stdout.write('Digite o nome: ');
  var nome = readConsole();
  double peso;
  try {
    stdout.write('Digite o Peso: ');
    peso = double.parse(readConsole());
  } catch (e) {
    print('Erro ao converter o peso para um número.');
    return; // Sai do programa se a conversão falhar.
  }
  double altura;
  try {
    stdout.write('Digite a Altura: ');
    altura = double.parse(readConsole());
  } catch (e) {
    print('Erro ao converter a altura para um número.');
    return; // Sai do programa se a conversão falhar.
  }
  var pessoa1 = Pessoa(nome, peso, altura);
  var resultado = pessoa1.calculaimc();
  String mensagem = pessoa1.classificacaoimc(nome, resultado);
  print(mensagem);
}

String readConsole() {
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}
