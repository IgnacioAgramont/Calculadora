import 'package:calculadora/bloc/calculadora/calculadora_bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'resultadoAuxiliar.dart';
import 'resultadoPrincipal.dart';
import 'separador.dart';

class Resultados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculadoraBloc, CalculadoraState>(
      builder: (context, state) {
        return Column(
          children: [
            ResultadoAuxiliar(
              text: state.primerNumero.endsWith('.0')
                  ? state.primerNumero
                      .substring(0, state.primerNumero.length - 2)
                  : state.primerNumero,
            ),
            ResultadoAuxiliar(text: state.operador),
            ResultadoAuxiliar(
              text: state.segundoNumero.endsWith('.0')
                  ? state.segundoNumero
                      .substring(0, state.segundoNumero.length - 2)
                  : state.segundoNumero,
            ),
            Separador(),
            ResultadoPrincipal(
              text: state.resultado.endsWith('.0')
                  ? state.resultado.substring(0, state.resultado.length - 2)
                  : state.resultado,
            )
          ],
        );
      },
    );
  }
}
