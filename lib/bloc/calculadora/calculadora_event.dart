part of 'calculadora_bloc.dart';

@immutable
abstract class CalculadoraEvent {}

class ResetearNum extends CalculadoraEvent {

}

class AgregarNum extends CalculadoraEvent {
  final String numero;
  AgregarNum(this.numero);
}

class CambiarPositivoNegativo extends CalculadoraEvent {}

class BorrarDigito extends CalculadoraEvent{}
