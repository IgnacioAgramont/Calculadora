import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculadora_event.dart';
part 'calculadora_state.dart';

class CalculadoraBloc extends Bloc<CalculadoraEvent, CalculadoraState> {
  CalculadoraBloc() : super(CalculadoraInitial()) {
    on<CalculadoraEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
