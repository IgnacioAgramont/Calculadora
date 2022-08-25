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
            ResultadoAuxiliar(text: state.primerNumero),
            ResultadoAuxiliar(text: state.operador),
            ResultadoAuxiliar(text: state.segundoNumero),
            Separador(),
            ResultadoPrincipal(text: state.resultado),
          ],
        );
      },
    );
  }
}
