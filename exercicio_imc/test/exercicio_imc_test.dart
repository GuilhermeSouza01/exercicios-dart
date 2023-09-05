import 'package:exercicio_imc/classes/pessoa.dart';
import 'package:exercicio_imc/exercicio_imc.dart';
import 'package:test/test.dart';

void main() {
  group('Pessoa', () {
    test('calculaimc retorna o imc corretamente', () {
      final pessoa = Pessoa('João', 70.0, 1.75);
      expect(
          pessoa.calculaimc(),
          closeTo(22.86,
              0.01)); // Verifica se o resultado está próximo do valor esperado.
    });

    test('classificacaoimc retorna a classificação correta', () {
      final pessoa = Pessoa('Maria', 45.0, 1.60);
      expect(
        pessoa.classificacaoimc('Maria', 17.58),
        equals(
            'Maria, seu imc é de 17.58, que é considerado como magreza leve para seu peso e altura'),
      );
    });

    // Adicione mais testes conforme necessário para cobrir outros casos.
  });
}
