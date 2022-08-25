part of 'calculadora_bloc.dart';

class CalculadoraState {
  final String resultado;
  final String primerNumero;
  final String segundoNumero;
  final String operador;

  CalculadoraState({
    this.resultado = '0',
    this.primerNumero = '',
    this.segundoNumero = '',
    this.operador = '',
  });

  CalculadoraState copyWith({
    String? resultado,
    String? primerNumero,
    String? segundoNumero,
    String? operador,
  }) =>
      CalculadoraState(
        resultado: resultado ?? this.resultado,
        primerNumero: primerNumero ?? this.primerNumero,
        segundoNumero: segundoNumero ?? this.segundoNumero,
        operador: operador ?? this.operador,
      );
}
