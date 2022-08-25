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
                    onPressed: () => print('+/-'),
                  ),
                  BotonesCalculadora(
                    text: 'Del',
                    bgColor: Color(0xffA5A5A5),
                    onPressed: () => print('Del'),
                  ),
                  BotonesCalculadora(
                    text: '/',
                    bgColor: Color(0xffF0A23B),
                    onPressed: () => print('/'),
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
                    text: 'X',
                    bgColor: Color(0xffF0A23B),
                    onPressed: () => print('X'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BotonesCalculadora(
                    text: '4',
                    onPressed: () => print('4'),
                  ),
                  BotonesCalculadora(
                    text: '5',
                    onPressed: () => print('5'),
                  ),
                  BotonesCalculadora(
                    text: '6',
                    onPressed: () => print('6'),
                  ),
                  BotonesCalculadora(
                    text: '-',
                    bgColor: Color(0xffF0A23B),
                    onPressed: () => print('-'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BotonesCalculadora(
                    text: '1',
                    onPressed: () => print('1'),
                  ),
                  BotonesCalculadora(
                    text: '2',
                    onPressed: () => print('2'),
                  ),
                  BotonesCalculadora(
                    text: '3',
                    onPressed: () => print('3'),
                  ),
                  BotonesCalculadora(
                    text: '+',
                    bgColor: Color(0xffF0A23B),
                    onPressed: () => print('+'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BotonesCalculadora(
                    text: '0',
                    big: true,
                    onPressed: () => print('0'),
                  ),
                  BotonesCalculadora(
                    text: '.',
                    onPressed: () => print('.'),
                  ),
                  BotonesCalculadora(
                    text: '=',
                    bgColor: Color(0xffF0A23B),
                    onPressed: () => print('='),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
