part of 'calculadora_bloc.dart';

@immutable
abstract class CalculadoraEvent {}

class ResetearNum extends CalculadoraEvent {}

class AgregarNum extends CalculadoraEvent {
  final String numero;
  AgregarNum(this.numero);
}

class CambiarPositivoNegativo extends CalculadoraEvent {}

class BorrarDigito extends CalculadoraEvent {}

class Operacion extends CalculadoraEvent {
  final String operacion;
  Operacion(this.operacion);
}

class CalcularResultado extends CalculadoraEvent{}
