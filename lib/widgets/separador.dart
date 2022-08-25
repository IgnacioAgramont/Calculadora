import 'package:flutter/material.dart';

class Separador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 2,
        color: Color.fromARGB(255, 204, 0, 255),
        margin: EdgeInsets.symmetric(vertical: 10)
    );
  }
}
