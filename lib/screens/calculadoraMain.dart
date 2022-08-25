import 'package:calculadora/bloc/calculadora/calculadora_bloc.dart';
import 'package:calculadora/widgets/resultados.dart';
import 'package:flutter/material.dart';

import 'package:calculadora/widgets/botones.dart';
import 'package:calculadora/widgets/separador.dart';
import 'package:calculadora/widgets/resultadoPrincipal.dart';
import 'package:calculadora/widgets/resultadoAuxiliar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculadoraMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final calculatorBloc = BlocProvider.of<CalculadoraBloc>(context);

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Container(),
              ),
              Resultados(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BotonesCalculadora(
                    text: 'AC',
                    bgColor: Color(0xffA5A5A5),
                    onPressed: () => calculatorBloc.add(ResetearNum()),
                  ),
                  BotonesCalculadora(
                    text: '+/-',
                    bgColor: Color(0xffA5A5A5),
                    onPressed: () =>
                        calculatorBloc.add(CambiarPositivoNegativo()),
                  ),
                  BotonesCalculadora(
                    text: 'Del',
                    bgColor: Color(0xffA5A5A5),
                    onPressed: () => calculatorBloc.add(BorrarDigito()),
                  ),
                  BotonesCalculadora(
                    text: '/',
                    bgColor: Color(0xffF0A23B),
                    onPressed: () => calculatorBloc.add(Operacion('/')),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BotonesCalculadora(
                    text: '7',
                    onPressed: () => calculatorBloc.add(AgregarNum('7')),
                  ),
                  BotonesCalculadora(
                    text: '8',
                    onPressed: () => calculatorBloc.add(AgregarNum('8')),
                  ),
                  BotonesCalculadora(
                    text: '9',
                    onPressed: () => calculatorBloc.add(AgregarNum('9')),
                  ),
                  BotonesCalculadora(
                    text: 'x',
                    bgColor: Color(0xffF0A23B),
                    onPressed: () => calculatorBloc.add(Operacion('x')),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BotonesCalculadora(
                    text: '4',
                    onPressed: () => calculatorBloc.add(AgregarNum('4')),
                  ),
                  BotonesCalculadora(
                    text: '5',
                    onPressed: () => calculatorBloc.add(AgregarNum('5')),
                  ),
                  BotonesCalculadora(
                    text: '6',
                    onPressed: () => calculatorBloc.add(AgregarNum('6')),
                  ),
                  BotonesCalculadora(
                    text: '-',
                    bgColor: Color(0xffF0A23B),
                    onPressed: () => calculatorBloc.add(Operacion('-')),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BotonesCalculadora(
                    text: '1',
                    onPressed: () => calculatorBloc.add(AgregarNum('1')),
                  ),
                  BotonesCalculadora(
                    text: '2',
                    onPressed: () => calculatorBloc.add(AgregarNum('2')),
                  ),
                  BotonesCalculadora(
                    text: '3',
                    onPressed: () => calculatorBloc.add(AgregarNum('3')),
                  ),
                  BotonesCalculadora(
                    text: '+',
                    bgColor: Color(0xffF0A23B),
                    onPressed: () => calculatorBloc.add(Operacion('+')),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BotonesCalculadora(
                    text: '0',
                    big: true,
                    onPressed: () => calculatorBloc.add(AgregarNum('0')),
                  ),
                  BotonesCalculadora(
                    text: '.',
                    onPressed: () => calculatorBloc.add(AgregarNum('.')),
                  ),
                  BotonesCalculadora(
                      text: '=',
                      bgColor: Color(0xffF0A23B),
                      onPressed: () => calculatorBloc.add(CalcularResultado())),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
