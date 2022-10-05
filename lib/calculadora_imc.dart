import 'dart:math';

class CalculadoraImc {
  CalculadoraImc({required this.peso, required this.altura});

  final int peso;
  final int altura;
  late double _imc;

  String calcularImc() {
    _imc = peso / pow(altura / 100, 2);
    return _imc.toStringAsFixed(1);
  }

  String obterResultado() {
    if (_imc >= 25) {
      return "Acima do Peso";
    } else if (_imc > 18.5) {
      return 'Normal';
    } else {
      return 'Abaixo do Peso';
    }
  }

  String obterAvaliacao() {
    if (_imc >= 25) {
      return "Você está acima do peso, melhore sua alimentação e faça exercícios";
    } else if (_imc > 18.5) {
      return 'Excelente, seu shape fala por você';
    } else {
      return 'Você está abaixo do peso, precisa ingerir mais calorias';
    }
  }
}
