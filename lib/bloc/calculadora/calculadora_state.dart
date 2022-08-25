part of 'calculadora_bloc.dart';

class CalculadoraState {
  final String resultado;
  final String primerNumero;
  final String segundoNumero;
  final String operador;

  CalculadoraState({
    this.resultado = '10',
    this.primerNumero = '30',
    this.segundoNumero = '20',
    this.operador = '-',
  });

  CalculadoraState copyWith({
    String? resultado,
    String? primerNumero,
    String? segundoNumero,
    String? operador,
  }) => CalculadoraState();

}
