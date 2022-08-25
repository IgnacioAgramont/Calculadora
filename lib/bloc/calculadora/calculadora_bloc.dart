import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculadora_event.dart';
part 'calculadora_state.dart';

class CalculadoraBloc extends Bloc<CalculadoraEvent, CalculadoraState> {
  CalculadoraBloc() : super(CalculadoraState());

  @override
  Stream<CalculadoraState> mapEventToState(
    CalculadoraEvent event,
  ) async* {
    if (event is ResetearNum) {
      yield* this._resetearNum();
    } else if (event is AgregarNum) {
      yield state.copyWith(
        resultado: (state.resultado == '0')
            ? event.numero
            : state.resultado + event.numero,
      );
    } else if (event is CambiarPositivoNegativo) {
      yield state.copyWith(
          resultado: state.resultado.contains('-')
              ? state.resultado.replaceFirst('-', '')
              : '-' + state.resultado);
    } else if (event is BorrarDigito) {
      yield state.copyWith(
          resultado: state.resultado.length > 1
              ? state.resultado.substring(0, state.resultado.length - 1)
              : '0');
    } else if (event is Operacion) {
      yield state.copyWith(
          primerNumero: state.resultado,
          resultado: '0',
          operador: event.operacion,
          segundoNumero: '0');
    } else if (event is CalcularResultado) {
      yield* this._calcular();
    }
  }

  Stream<CalculadoraState> _resetearNum() async* {
    yield CalculadoraState(
      primerNumero: '',
      operador: '',
      segundoNumero: '',
      resultado: '0',
    );
  }

  // Stream<CalculadoraState> _verificar(dynamic event) async* {
    // if (!state.resultado.contains('.')) {
    //   resultado:
    //   (state.resultado == '0') ? event.numero : state.resultado + event.numero;
    // } else if (state.resultado.contains('.')) {
    //   resultado:
    //   state.resultado;
    // } else {
    //   resultado:
    //   (state.resultado == '0') ? event.numero : state.resultado + event.numero;
    // }
  //   resultado:
  //   (state.resultado == '0') ? event.numero : state.resultado + event.numero;
  // }

  Stream<CalculadoraState> _calcular() async* {
    final double num1 = double.parse(state.primerNumero);
    final double num2 = double.parse(state.resultado);

    switch (state.operador) {
      case '+':
        yield state.copyWith(
            segundoNumero: state.resultado, resultado: '${num1 + num2}');
        break;

      case '-':
        yield state.copyWith(
            segundoNumero: state.resultado, resultado: '${num1 - num2}');
        break;

      case 'x':
        yield state.copyWith(
            segundoNumero: state.resultado, resultado: '${num1 * num2}');
        break;

      case '/':
        yield state.copyWith(
            segundoNumero: state.resultado, resultado: '${num1 / num2}');
        break;

      default:
        yield state;
    }
  }
}
