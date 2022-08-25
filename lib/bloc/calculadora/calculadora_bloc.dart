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
      yield CalculadoraState(
        primerNumero: '',
        operador: '',
        segundoNumero: '',
        resultado: '0',
      );
    } else if (event is AgregarNum) {
      yield CalculadoraState(
        primerNumero: '',
        operador: '',
        segundoNumero: '',
        resultado: (state.resultado == '0')
            ? event.numero
            : state.resultado + event.numero,
      );
    }
  }
}
