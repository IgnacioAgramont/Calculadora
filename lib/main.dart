import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:calculadora/bloc/calculadora/calculadora_bloc.dart';
import 'package:calculadora/screens/calculadoraMain.dart';

void main() {
  runApp(AppState());
}

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CalculadoraBloc>(create: (_) => CalculadoraBloc())
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora',
      home: CalculadoraMain(),
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Color.fromARGB(255, 60, 3, 75)),
    );
  }
}
