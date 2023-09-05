// ignore_for_file: file_names

class Pessoa {
  String nome = "";
  double peso = 0;
  double altura = 0;

  Pessoa(String nome, double peso, double altura) {
    this.nome = nome;
    this.peso = peso;
    this.altura = altura;
  }

  double calculaimc() {
    String resultado =
        (this.peso / (this.altura * this.altura)).toStringAsFixed(2);

    return double.parse(resultado);
  }

  String classificacaoimc(String nome, double resultado) {
    if (resultado < 16) {
      return '$nome, seu imc é de $resultado, que é considerado como magreza grave para seu peso e altura';
    } else if (resultado > 16 && resultado < 17) {
      return '$nome, seu imc é de $resultado, que é considerado como magreza moderada para seu peso e altura';
    } else if (resultado >= 17 && resultado < 18.5) {
      return '$nome, seu imc é de $resultado, que é considerado como magreza leve para seu peso e altura';
    } else if (resultado >= 18.5 && resultado < 25) {
      return '$nome, seu imc é de $resultado, que é considerado como peso normal para seu peso e altura';
    } else if (resultado >= 25 && resultado < 30) {
      return '$nome, seu imc é de $resultado, que é considerado como sobrepeso para seu peso e altura';
    } else if (resultado >= 30 && resultado < 35) {
      return '$nome, seu imc é de $resultado, que é considerado como obesidade grau 1 para seu peso e altura';
    } else if (resultado >= 35 && resultado < 40) {
      return '$nome, seu imc é de $resultado, que é considerado como obesidade grau 2 para seu peso e altura';
    } else {
      return '$nome, seu imc é de $resultado, que é considerado como obesidade grau 3 para seu peso e altura';
    }
  }
}
