import 'package:flutter/material.dart';

class BotonesCalculadora extends StatelessWidget {
  final Color bgColor;
  final bool big;
  final String text;

  final Function onPressed;

  BotonesCalculadora({
    Key? key,
    bgColor,
    this.big = false,
    required this.text,
    required this.onPressed,
  })  : this.bgColor = bgColor ?? Color(0xff333333),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonStyle = TextButton.styleFrom(
      backgroundColor: this.bgColor,
      primary: Colors.white,
      shape: StadiumBorder(),
    );

    return Container(
      margin: EdgeInsets.only(bottom: 10, right: 5, top: 5),
      child: TextButton(
        style: buttonStyle,
        child: Container(
          width: this.big? 150:65,
          height: 65,
          child: Center(
          child: Text(this.text, style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),)
          ),
        ),
        onPressed: () => this.onPressed(),
      ),
    );
  }
}
