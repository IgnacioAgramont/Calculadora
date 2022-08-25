import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Calculadora',
        home: CalculadoraMain(),
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black
        ),
    );
  }
}
